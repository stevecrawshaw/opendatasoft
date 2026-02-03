duckdb

LOAD SPATIAL;
-- attach postGIS database - VPN on
ATTACH '' AS weca_postgres (TYPE POSTGRES, SECRET weca_postgres);

-- function for creating geopoint JSON from blob geometry
CREATE OR REPLACE MACRO geopoint_from_blob(shape) AS
'{' || shape.ST_GeomFromWKB().ST_Transform('EPSG:27700', 'EPSG:4326').ST_X() || ', ' ||
       shape.ST_GeomFromWKB().ST_Transform('EPSG:27700', 'EPSG:4326').ST_Y() || '}';

-- load BDUK sample data excluding North Somerset - cast the UPRN to BIGINT
CREATE OR REPLACE TABLE weca_bduk AS 
SELECT *
 REPLACE(uprn::BIGINT AS uprn,
              if(bduk_hubs_supplier = 'NA', NULL, bduk_hubs_supplier) AS bduk_hubs_supplier,
              if(bduk_hubs_contract_name = 'NA', NULL, bduk_hubs_contract_name) AS bduk_hubs_contract_name)
FROM read_xlsx('data/BDUK_WECA_OMR_FINAL.xlsx', all_varchar = TRUE) 
     WHERE local_authority != 'North Somerset';

-- check sample data
FROM weca_bduk LIMIT 3;

-- check uprn table in postGIS
SELECT * FROM information_schema.tables WHERE table_name LIKE '%uprn%';

FROM weca_postgres.os.open_uprn_lep LIMIT 2;

-- export BDUK sample with geopoint to CSV

COPY
(SELECT bduk_sample.*,
       geopoint_from_blob(lep_uprn.shape) AS geo_point_2d
FROM weca_bduk AS bduk_sample
LEFT JOIN weca_postgres.os.open_uprn_lep AS lep_uprn
ON lep_uprn.uprn::BIGINT = bduk_sample.uprn)

TO 'data/bduk-sample_weca_geo.csv' (HEADER TRUE);

