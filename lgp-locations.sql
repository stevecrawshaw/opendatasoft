duckdb
LOAD SPATIAL;

CREATE TABLE lgp_locations AS
SELECT
    name,
    type,
    postcode
FROM
    read_json('data/lgp_locations.json');

DESCRIBE lgp_locations;

ATTACH '../mca-data/data/ca_epc.duckdb' AS mca;

CREATE TABLE lgp_geolocated_tbl AS
SELECT
    l.name,
    l.type,
    l.postcode,
    m.geom
FROM
    lgp_locations l
JOIN
    mca.postcodes_tbl m ON l.postcode = m.pcds;

DESCRIBE mca.postcodes_tbl;

DESCRIBE lgp_geolocated_tbl;

COPY lgp_geolocated_tbl TO 'data/lgp_geolocated_tbl.geojson' (FORMAT GDAL, DRIVER 'GeoJSON');

.shell head -n 5 data/lgp_geolocated_tbl.geojson