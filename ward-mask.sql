duckdb
LOAD SPATIAL;

COPY 
( SELECT "geom" FROM ST_Read('data/electoral-wards-divisions-united-kingdom.geojson')
WHERE wed_name != 'Kingswood')
TO 'data/wards_not_kingswood.geojson' WITH (FORMAT GDAL, DRIVER 'GeoJSON');