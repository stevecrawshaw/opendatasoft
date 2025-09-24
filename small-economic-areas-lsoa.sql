duckdb


CREATE OR REPLACE TABLE raw_gva_lsoa_tbl AS
SELECT * FROM read_xlsx('data/uksmallareagvaestimates1998to2022.xlsx',
                         sheet='Table 1',
                         range='A2:AE32846',
                         normalize_names=true);

CREATE OR REPLACE TABLE gva_lsoa_long_tbl AS
UNPIVOT raw_gva_lsoa_tbl
ON COLUMNS('^_')
INTO name "year" VALUE gva_gbp_m;

SELECT COUNT(*) FROM gva_lsoa_long_tbl;

CREATE OR REPLACE TABLE gva_lsoa_long_lep_ods_tbl AS
SELECT * EXCLUDE(year, itl_name), calendar_year: substring(year, 2, 4)::INTEGER
FROM gva_lsoa_long_tbl 
WHERE lad_code IN ('E06000022', 'E06000023', 'E06000024', 'E06000025');

COPY gva_lsoa_long_lep_ods_tbl TO 'data/gva_lsoa_long_lep_ods_tbl.csv';