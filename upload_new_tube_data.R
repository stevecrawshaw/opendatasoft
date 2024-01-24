#This script reads the monthly excel file from the SSS lab which is in a
#standard format with known column names. It checks to make sure the data have
#not been previously entered and checks for outliers. It uploads to the 
#https://opendata.bristol.gov.uk/explore/dataset/no2-tubes-raw/table/?sort=dateon
#dataset

# and also updates the data table in the ms access database
# Libraries ----
p <- c("tidyverse", "lubridate", "httr", "jsonlite", "readxl", "DBI", "odbc", "janitor", "glue", "config")
library(pacman)
p_load(char = p)

source("tubes/tube_data_checks.R") # sources another R script to provide check functions

# Add any tube ID's with wrong exposure in the vector below ----

december_2022 <- as.integer(c("16", "565", "671", "664", "662", "661", "159", "643", "407", "628", "295", "629", "654", "312", "644", "645", "21", "161", "621", "163", "492", "494", "493", "659", "570", "571", "569", "568", "567", "307", "660", "260", "656", "261", "464", "300", "658", "325", "657", "303", "655", "487"))


not_use_for_annual <- c() #c() # vector of siteids with wrong exposure. empty = all OK

# database connection ----

con <- dbConnect(odbc::odbc(), .connection_string = "Driver={Microsoft Access Driver (*.mdb, *.accdb)}; Dbq=S:\\SUSTAIN\\Sustain-Common\\SCCCS\\write_gis_r\\tube_database\\access_2010_versions\\no2_data.accdb;")

# tube spreadsheets must be on S:
# this will open a window to navigate select the file

tube_data_file <- choose.files(default = "S:/SUSTAIN/Sustain-Common/SCCCS/write_gis_r/tube_database/access_2010_versions/*.xls",
                               caption = "Select the spreadsheet for upload",
                               multi = FALSE
)

# this reads the file from the path given by dialog above
no2_data <- read_excel(path = tube_data_file,
                       sheet = "NOX",
                       col_types = c("skip", "skip", "skip", "skip", "numeric", "skip", "skip", "date", "date", "numeric", "numeric")) %>% 
    select(siteid = SiteID,
           dateon = Date_on,
           dateoff = Date_Off,
           totalPollutant = `µg_NO2`,
           concentration = `NO2_µg/m³`)

# filter out all missing or zero conc values
proc_data <- no2_data %>% 
    filter(!is.na(concentration),
           concentration != 0)

# function for sending to OD portal
push_ods <- function(proc_data){
    # GET LAST ENTRY FOR CHECKING DATES AND MAX ID -----
  pushkey_tubes <- get(config = 'ods-api', value = 'pushkey-tubes')
    push_api_url <- "https://opendata.bristol.gov.uk/api/push/1.0/no2-tubes-raw/realtime/push/?pushkey={pushkey_tubes}"
    apikey <- get(config = 'ods-api', value = 'apikey')
    get_last_ODS_tube <- function(){
        base_url <- "https://opendata.bristol.gov.uk/api/v2/catalog/datasets/no2-tubes-raw/records/"
        # API keys ----
        # for accessing the private monthly tube data
        select_qry <- "id as maxid, dateoff"
        row_qry <- "1"
        start_qry = "0"
        sort_qry = "-id"
        
        qry_list <- list(select = select_qry,
                         rows = row_qry,
                         start = start_qry,
                         sort = sort_qry,
                         apikey = apikey)
        
        r <- GET(url = base_url, query = qry_list) #response object
        
        if (!http_error(r)){ #extract the maximum ID from the aggregations object
            content(r, as="text") %>% 
                fromJSON() %>% 
                pluck("records", "record", "fields") %>% 
                return()
        } else {
            return(r$status_code)
        }
        
    }
    
last_tube_tbl <- get_last_ODS_tube()
    
dateoff <-  last_tube_tbl %>%
        pull(dateoff) %>% 
        ymd() #the last date in the ODS dataset
maxid <- last_tube_tbl %>% 
        pull(maxid)##the last ID
    
    #get the last date of the new dataset to check for duplicate uploads
last_tube_date <- proc_data$dateoff %>% 
        max() %>% 
        as.Date()#last date off of current upload
    
    #upload the new data if the date checks are OK
    if(abs(dateoff - last_tube_date) < 5){
        print("It looks like this data has been entered before - review uploads")
    } else {
        #create a vector for ID's incrementing from the previous maximum
        id <- seq(from = maxid + 1, to = maxid + nrow(proc_data), by = 1)
        
        #create the JSON object for updating the raw data
        export_data <- proc_data %>% 
            select(-totalPollutant) %>% 
            add_column(id = id, .before = 1) %>%
            toJSON()
        
        result <- POST(url = push_api_url, body = export_data, apikey = apikey)
        
        content(result) %>% 
            return()
        
    }
}

# renames and cleans the export table
transmute_cols <- function(df_4_db){
     
        df_4_db %>% 
            transmute(dateOn = dateon,
                      dateOff = dateoff,
                      totalPollutant,
                      concentration,
                      LocID = siteid,
                      DateEntered = Sys.time())    
 }
 
# exports to access
export_to_access <- function(clean_data, no2_data, not_use_for_annual, con){
   
    
    db_data_clean <- clean_data %>% 
        transmute_cols() %>% 
        add_column(PollutantID = 4L) %>% 
        mutate(UseForAnnual = if_else(LocID %in% not_use_for_annual, 0L, 1L))
    
    db_data_raw <- no2_data %>% 
        transmute_cols()
    
    #fields <- dbDataType(con, db_data_raw)
    #dbCreateTable(conn = con, name = "tbl_raw_tube_data", fields = fields )
    
    # append raw data
    dbWriteTable(con, name = "tbl_raw_tube_data",
                 value = db_data_raw,
                 append = TRUE,
                 batch_rows = 1)
    
    # APPEND cleaned data (no NA's)
    
    dbWriteTable(con, name = "data",
                 value = db_data_clean,
                 append = TRUE,
                 batch_rows = 1)
    print("Exported to MS ACcess")
}


data_checks <- glue("There are {incomplete_sites(no2_data)} incomplete sites and {missing_tubes(no2_data)} missing tubes in total. The exposure period varied by {exposure_range(proc_data)} days. There were {outliers(proc_data)}.")

print(data_checks)

# make a map showing the locations of outliers
if(!outliers(proc_data) == "no outliers"){
    proc_data %>% 
        get_bbox_sites() %>% 
        get_outliers_map()
}
#remove outliers
clean_data <- proc_data %>% 
    filter(between(concentration, lower, upper))

# Run the exports
push_ods(clean_data) # appends new data to no2-tubes-raw dataset
export_to_access(clean_data, no2_data, not_use_for_annual, con) # updates the data table

dbDisconnect(con)
