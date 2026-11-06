duckdb

INSTALL httpfs;
LOAD httpfs;

CREATE OR REPLACE TABLE ghg_la_emissions_tbl AS 
FROM 
read_csv("https://assets.publishing.service.gov.uk/media/6a3bacc9d52550a19950f2f5/2005-24-local-authority-ghg-emissions-csv-dataset.csv",
normalize_names = true);

CREATE OR REPLACE TABLE ca_la_tbl AS
FROM read_csv("../epc-new/data/ca_la_tbl.csv");

FROM ca_la_tbl WHERE  LAD25NM = 'North Somerset';

ATTACH '../duckdb-macros/macro_library.duckdb' AS macros;

FROM macros.glimpse('ghg_la_emissions_tbl');
FROM macros.glimpse('ca_la_tbl');

CREATE OR REPLACE TABLE la_ghg_emissions_cauths_tbl AS
SELECT 
e.region_code,
e.local_authority,
e.local_authority_code,
e.calendar_year,
e.la_ghg_sector,
e.la_ghg_subsector AS la_ghg_sub_sector,
e.greenhouse_gas,
e.territorial_emissions_kt_co2e,
e.emissions_within_the_scope_of_influence_of_las_kt_co2,
e.midyear_population_thousands,
e.area_km2,
c.CAUTH25CD AS cauthcd,
c.CAUTH25NM as cauthnm
FROM ghg_la_emissions_tbl e
INNER JOIN ca_la_tbl c
ON e.local_authority_code = c.LAD25CD;

FROM macros.glimpse('la_ghg_emissions_cauths_tbl');

COPY 
la_ghg_emissions_cauths_tbl
TO 'data/ca_la_ghg_emissions_sub_sector_ods_vw.csv';