duckdb

ATTACH 'water.duckdb' AS w;
USE w;


LOAD HTTPFS;
LOAD SPATIAL;

-- 'https://opendata.westofengland-ca.gov.uk/api/explore/v2.1/catalog/datasets/surface-water-quality-measurements/exports/parquet?lang=en&refine=site_name%3A%22Royate%20Hill%22&facet=facet(name%3D%22site_name%22%2C%20disjunctive%3Dtrue)&timezone=Europe%2FLondon'
-- 'https://opendata.westofengland-ca.gov.uk/api/explore/v2.1/catalog/datasets/surface-water-quality-measurements/exports/parquet?lang=en&timezone=Europe%2FLondon'
-- .mode duckbox
-- SELECT column_name FROM (DESCRIBE
-- (SELECT * FROM read_parquet('https://opendata.westofengland-ca.gov.uk/api/explore/v2.1/catalog/datasets/surface-water-quality-measurements/exports/parquet?lang=en&refine=site_name%3A%22Royate%20Hill%22&facet=facet(name%3D%22site_name%22%2C%20disjunctive%3Dtrue)&timezone=Europe%2FLondon')
-- LIMIT 2));

-- objectid
-- site_id
-- date
-- total_coliforms_as_cfu
-- e_coli_as_cfu
-- total_coliforms_as_mpn
-- e_coli_as_mpn
-- presumptive_enterococci_as_cfu
-- faecal_streptococci_as_cfu
-- temperature
-- ph
-- conductivity
-- dissolved_oxygen
-- dissolved_oxygen_pc
-- phosphate_as_phosphorous
-- salinity
-- clostridium_pefingens
-- ammonium_as_nh4
-- turbidity
-- ammonium_as_nitrate
-- nitrite
-- nitrate
-- faecal_coliforms
-- salmonella
-- biological_oxygen_demand
-- chemical_oxygen_demand
-- suspended_solids
-- geo_point_2d
-- site_name
-- river


-- the update is usually the whole dataset as an excel file attached to an email
CREATE OR REPLACE TABLE update_tbl AS
SELECT
siteid site_id,
strptime("Date", '%Y-%m-%dT%H:%MZ') "date",
tc_cfu total_coliforms_as_cfu,
ec_cfu e_coli_as_cfu,
tc_mpn total_coliforms_as_mpn,
ec_mpn e_coli_as_mpn,
p_ecc_cfu presumptive_enterococci_as_cfu,
fs_cfu faecal_streptococci_as_cfu,
temp temperature,
ph ph,
cond conductivity,
"do" dissolved_oxygen,
dopc dissolved_oxygen_pc,
phosphate_p phosphate_as_phosphorous,
salinity,
clost_perf clostridium_pefingens,
ammonium_nh4 ammonium_as_nh4,
turb turbidity,
ammonium_n ammonium_as_nitrate,
nitrite,
nitrate,
fcoliforms faecal_coliforms,
salmonella,
bod biological_oxygen_demand,
cod chemical_oxygen_demand,
sussolids suspended_solids

FROM read_xlsx("data/qry_2025_reporting Mar.xlsx",
sheet = "qry_2025_reporting", range = "A1:AB15000", header = true)
WHERE siteid IS NOT NULL;

SELECT * FROM update_tbl LIMIT 2;

COPY (FROM update_tbl)
TO 'data/swq_meas_fact.csv' WITH (HEADER true, delimiter ',');