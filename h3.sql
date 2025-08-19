duckdb

ATTACH '' AS weca_postgres (TYPE POSTGRES, SECRET weca_postgres);
USE weca_postgres;

INSTALL webmacro FROM community;
LOAD webmacro;
SELECT load_macro_from_url('https://gist.githubusercontent.com/stevecrawshaw/9f0ec4f10873dc278246644502b50ab5/raw/aa203681c9e88cc4e7c740cda3438ed2b1e8aa3b/glimpse.sql') as glimpse;

FROM glimpse(tbl);

INSTALL SPATIAL;
LOAD SPATIAL;

INSTALL H3 FROM community;
LOAD h3;
-- check we haven't got H3 in weca_postgres
SELECT * FROM information_schema.tables WHERE table_name LIKE '%h3%';

SELECT * FROM information_schema.tables WHERE table_schema = 'weca';

FROM ST_Drivers();
USE 'memory';

CREATE OR REPLACE TABLE lep_boundary_tbl AS
SELECT * FROM ST_Read('data/lep_boundary.geojson');

FROM lep_boundary_tbl;

SELECT h3_polygon_wkt_to_cells(geom, 9) FROM lep_boundary_tbl;

FROM glimpse(lep_boundary_tbl);

CREATE OR REPLACE TABLE lep_h3_grid AS
SELECT
    -- Select all original columns from your table
    tbl.*,
    -- First, cast the outer string to JSON, then extract the 'geo_shape'
    -- value as text. This gives us the clean GeoJSON string needed by ST_GeomFromGeoJSON.
    h3_polygon_wkt_to_cells((((tbl.geom))), 8) AS h3_index
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