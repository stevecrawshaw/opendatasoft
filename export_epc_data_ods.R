pacman::p_load(tidyverse,
               duckdb,
               janitor)


con <- DBI::dbConnect(duckdb(), dbdir = "../weca_cesap/data/ca_epc.duckdb")
# the EPC data is now within a view in the duckdb database
# calculations for construction epoch and the joins with other tables 
# are much faster than doing it in R
# The cleaning process are done in Polars and are much more performant than R

dbListTables(con)
con |> 
  dbSendQuery("INSTALL SPATIAL;")
con |> 
  dbSendQuery("LOAD SPATIAL;")

lep_epc_domestic_point_ods_tbl <- tbl(con, "epc_domestic_lep_vw") %>% 
  clean_names() |> 
  select(lmk_key,
         local_authority,
         property_type,
         transaction_type,
         tenure,
         walls_description,
         roof_description,
         walls_energy_eff,
         mainheat_description,
         mainheat_energy_eff,
         mainheat_env_eff,
         main_fuel,
         solar_water_heating_flag,
         construction_age_band,
         current_energy_rating,
         potential_energy_rating,
         co2_emissions_current,
         co2_emissions_potential,
         co2_emiss_curr_per_floor_area,
         number_habitable_rooms,
         number_heated_rooms,
         photo_supply,
         total_floor_area,
         building_reference_number,
         built_form,
         lsoa21,
         msoa21,
         lat,
         long,
         imd,
         total = total_all_households,
         owned,
         social_rented,
         private_rented,
         date  = lodgement_date,
         year = lodgement_year,
         month = lodgement_month,
         day = lodgement_day,
         n_imd_decile = imd_decile,
         n_nominal_construction_date = nominal_construction_year,
         construction_epoch,
         ladnm
         ) |> 
  collect()

lep_epc_domestic_point_ods_tbl %>% 
  write_csv("data/lep_epc_domestic_point_ods_tbl.csv", na = "")


epc_non_domestic_ods_tbl <-
tbl(con, "epc_non_domestic_ods_vw") |> 
  clean_names() |> 
  select(uprn,
         lmk_key,
         building_reference_number,
         asset_rating,
         asset_rating_band,
         property_type,
         local_authority,
         constituency,
         transaction_type,
         standard_emissions,
         typical_emissions,
         target_emissions,
         building_emissions,
         building_level,
         renewable_sources,
         date = lodgement_date,
         year = lodgement_year,
         month = lodgement_month,
         ladcd,
         ladnm,
         cauthcd,
         cauthnm,
         lsoa21,
         lat,
         long) |> 
  head() |> 
  collect() |> glimpse()



#write_csv("data/epc_non_domestic_ods.csv", na = "")


con %>% dbDisconnect()
