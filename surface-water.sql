duckdb

ATTACH 'water.duckdb' AS w;
USE w;

INSTALL SPATIAL;
LOAD SPATIAL;

CREATE TABLE swq_all_tbl AS
SELECT * FROM st_read('data/Surface_Water_Quality (1).geojson');

DESCRIBE swq_all_tbl;

CREATE OR REPLACE VIEW swq_sites_dim_vw AS
SELECT 
    Site_name,
    River,
    Site_ID,
    geom,
FROM swq_all_tbl
GROUP BY ALL
ORDER BY Site_ID;

CREATE OR REPLACE VIEW swq_meas_fact_vw AS
SELECT * EXCLUDE (Site_name, River, geom, OBJECTID) 
FROM swq_all_tbl;

DESCRIBE swq_meas_fact_vw;

COPY(SELECT * FROM swq_sites_dim_vw) 
TO 'data/swq_sites_dim.geojson' WITH (FORMAT GDAL, DRIVER 'GeoJSON');

COPY(SELECT * FROM swq_meas_fact_vw)
TO 'data/swq_meas_fact.csv' WITH (HEADER true, delimiter ',');

.quit