pacman::p_load(fastverse, tidyverse, janitor, glue, rvest, readxl, rio, httr2, openssl, curl)

csv_url_weca <- "https://opendata.westofengland-ca.gov.uk/api/explore/v2.1/catalog/datasets/lep-epc-domestic-point/exports/csv?lang=en&refine=property_type%3A%22Park%20home%22&facet=facet(name%3D%22property_type%22%2C%20disjunctive%3Dtrue)&timezone=Europe%2FLondon&use_labels=true&delimiter=%2C"

csv_url_ods <- "https://westofenglandca.opendatasoft.com/api/explore/v2.1/catalog/datasets/lep-epc-domestic-point/exports/csv?lang=en&refine=property_type%3A%22Park%20home%22&facet=facet(name%3D%22property_type%22%2C%20disjunctive%3Dtrue)&timezone=Europe%2FLondon&use_labels=true&delimiter=%2C"

# Get the data

test_dt <- fread(csv_url_weca) #fails with ssl error

download.file(url = csv_url_weca, destfile = "data/test.csv") # fails


response <- request(csv_url_weca) %>% 
  req_perform()


resp_body_string(response) %>% 
  read_csv() 

con <- curl::curl(url = csv_url_weca) # fails
readLines(con)

# do some ssl testing

# get the cert
hostname <- "opendata.westofengland-ca.gov.uk"

cert <- download_ssl_cert(hostname)
cert_verify(cert, ca_bundle())
print(cert)
as.list(cert[[1]])


# Path to the ISRG Root X1 certificate
cert_path <- "../cacert.pem"


# Configuring curl options to use the certificate
request <- request(csv_url_weca) %>%
  req_options(cainfo = cert_path)

# Sending the request and getting the response
response <- req_perform(request)

# Printing the response
cat(response_body_string(response))


# the solution is to use the new vesion of curl
#C:\Users\steve.crawshaw\curl-8.8.0_3-win64-mingw\curl-8.8.0_3-win64-mingw\bin\curl.exe

# and specify the protocol
#curl --tlsv1.2 -o data.csv "https://opendata.westofengland-ca.gov.uk/api/explore/v2.1/catalog/datasets/lep-epc-domestic-point/exports/csv?lang=en&refine=property_type%3A%22Park%20home%22&facet=facet(name%3D%22property_type%22%2C%20disjunctive%3Dtrue)&timezone=Europe%2FLondon&use_labels=true&delimiter=%2C"

# if you use the installed version of curl 8.2.1 the --tlsv1.2 switch doesn't work

# passing the cacert.pem from requests library doesn't work on the installed version of curl 8.2.1

# 
# I have done some testing, and I think the problem is that the R libraries are essentially calling curl to fetch the data. This seems to include readr::read_*  httr::GET() httr2::request() and utils::download.file() - and probably others.
# 
# The curl library that's installed on my machine is version 8.2.1 from July 2023. curl - Changes
# 
# using the default version and passing the --tlsv1.2 switch (to specify openssl protocol) still results in the schannel error 
# 
# curl: (35) schannel: next InitializeSecurityContext failed: SEC_E_ILLEGAL_MESSAGE (0x80090326) - This error usually occurs when a fatal SSL/TLS alert is received (e.g. handshake failed). More detail may be available in the Windows System event log.
# 
# - so it looks like it isn't invoking the SSL protocol properly as requested.
# 
# Using the newest version of curl 8.8.0 and passing the --tlsv1.2 switch does work.
# 
# C:\Users\steve.crawshaw\curl-8.8.0_3-win64-mingw\curl-8.8.0_3-win64-mingw\bin>curl --tlsv1.2 -o data.csv "https://opendata.westofengland-ca.gov.uk/api/explore/v2.1/catalog/datasets/lep-epc-domestic-point/exports/csv?lang=en&refine=property_type%3A%22Park%20home%22&facet=facet(name%3D%22property_type%22%2C%20disjunctive%3Dtrue)&timezone=Europe%2FLondon&use_labels=true&delimiter=%2C"
# 
# I understand that the requests library in python uses urllib3 not curl to make the connection, and hence there is no issue when using requests in python to access data with the api.
# 
# I'm waiting for a new laptop at the moment. When I get it, i'll try and get the new version of curl installed and test if the R libraries work with this.


#Remy's explanation ----

# Let's Encrypt has deprecated certificate renewals using DST Root CA X3 in early June. New certificates since June use the CA ISRG Root X1 while older certificates emitted before June use DST Root CA X3.
# 
# Certificates last about 3 months and are renewed automatically. What happened in this case is that the certificate for opendata.westofengland-ca.gov.uk have been renewed in June (using the new CA) and the certificate for westofenglandca.opendatasoft.com has been renewed in May (prior to the change - using the older CA). This means that the certificate for the opendatasoft.com DNS uses DST Root CA X3 as a CA while the certificate for opendata.westofengland-ca.gov.uk uses ISRG Root X1 as a CA.
# When they will be renewed (in August and September), they will only use ISRG Root X1 as a CA. The use of DST Root CA X3 as a root CA for Let's Encrypt was a workaround for very old systems which did not trust yet ISRG Root X1. However, ISRG Root X1 CA is now widely trusted by all recent systems worldwide, removing the need for such a workaround by the Let's Encrypt project.
# 
# In your case, you will need to check the configuration of your R execution environment to make sure that ISRG Root X1 is trusted: this is the only way to move forward with this issue.
# 
# Kind regards, 



