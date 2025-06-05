duckdb

ATTACH 'data/water.duckdb' AS w;
USE w;

LOAD HTTPFS;
LOAD SPATIAL;

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

FROM read_xlsx("data/qry_2025_reporting May.xlsx",
sheet = "qry_2025_reporting", range = "A1:AB15000", header = true)
WHERE siteid IS NOT NULL;

SELECT * FROM update_tbl LIMIT 2;

ATTACH 'https://github.com/stevecrawshaw/vs-code-setup/raw/refs/heads/main/m.db' AS m;

SELECT * FROM m.glimpse(update_tbl);

COPY (FROM update_tbl)
TO 'data/swq_meas_fact.csv' WITH (HEADER true, delimiter ',');

--------------------**********************************----------------------
-- don't forget to update the table view in the visualisations tab of ODS when you update dataset