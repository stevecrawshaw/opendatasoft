duckdb

ATTACH '' AS weca_postgres (TYPE POSTGRES, SECRET weca_postgres);
-- USE weca_postgres;

INSTALL webmacro FROM community;
LOAD webmacro;
SELECT load_macro_from_url('https://gist.githubusercontent.com/stevecrawshaw/9f0ec4f10873dc278246644502b50ab5/raw/aa203681c9e88cc4e7c740cda3438ed2b1e8aa3b/glimpse.sql') as glimpse;

LOAD SPATIAL;

INSTALL H3 FROM community;
LOAD h3;
-- check we haven't got H3 in weca_postgres
SELECT * FROM information_schema.tables WHERE table_name LIKE '%h3%';

FROM ST_Drivers();

CREATE OR REPLACE TABLE lep_boundary_tbl AS
SELECT ST_GeomFromWKB(shape).ST_Transform('EPSG:27700', 'EPSG:4326') geometry
FROM weca_postgres.os.bdline_ua_lep_diss;

FROM lep_boundary_tbl;

FROM glimpse(lep_boundary_tbl);

CREATE OR REPLACE TABLE lep_h3_grid AS
SELECT
    -- Select all original columns from your table
    tbl.*,
    -- First, cast the outer string to JSON, then extract the 'geo_shape'
    -- value as text. This gives us the clean GeoJSON string needed by ST_GeomFromGeoJSON.
    h3_polygon_wkt_to_cells((((tbl.geometry))), 8) AS h3_index
FROM
    lep_boundary_tbl AS tbl;

SELECT h3_index FROM lep_h3_grid;

CREATE OR REPLACE TABLE lep_h3_flat AS
SELECT
    UNNEST(h3_index) AS h3_cell
FROM
    lep_h3_grid;

FROM lep_h3_flat;

FROM glimpse(lep_h3_flat);

CREATE OR REPLACE TABLE h3_ods_test AS
SELECT
    h3_cell::VARCHAR AS h3_id,
    -- 1. Create the WKT string
    -- 2. Convert it to a GEOMETRY object
    -- 3. Flip the coordinates to the correct (Lon, Lat) order for GeoJSON
    ST_FlipCoordinates(ST_GeomFromText(h3_cell_to_boundary_wkt(h3_cell))) AS geometry
FROM
    lep_h3_flat;

-- Now, your original COPY command will work correctly
COPY h3_ods_test 
TO 'data/h3_ods_test_tbl.geojson' 
WITH (FORMAT GDAL, DRIVER 'GeoJSON');

FROM h3_ods_test LIMIT 10;

COPY h3_ods_test 
TO 'data/h3_ods_test_tbl.geojson' 
WITH (FORMAT GDAL, DRIVER 'GeoJSON');