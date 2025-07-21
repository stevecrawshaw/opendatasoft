-- script to derive postcode centroids for all postcodes where O2 is the only provider for 2g signal
-- for international roaming sims  - which will be switched off in October 2025
-- https://www.ofcom.org.uk/phones-and-broadband/coverage-and-speeds/preparing-for-2g-switch-off---devices-using-international-roaming-sims-2g-network-coverage-data-and-predicted-new-2g-inbound-roaming-not-spots
-- more conservative methodology
-- for export to opendatasoft and use by transport teams to gauge connectivity of RTI at bus stops

duckdb
INSTALL SPATIAL;
LOAD SPATIAL;
INSTALL HTTPFS;
LOAD HTTPFS;

--
CREATE OR REPLACE TABLE lep_boundary AS
SELECT * EXCLUDE(geo_point_2d) 
FROM read_parquet('https://opendata.westofengland-ca.gov.uk/api/explore/v2.1/catalog/datasets/mca-and-north-somerset-lnrs-boundary/exports/parquet');

-- buffer by converting to BNG first then back to lat long
CREATE OR REPLACE TABLE lep_buffer AS
SELECT ST_Transform(ST_Buffer(ST_Transform(geo_shape, 'EPSG:4326', 'EPSG:27700'), 5000), 'EPSG:27700', 'EPSG:4326') geo_buf 
FROM lep_boundary;

ATTACH 'md:mca_data';
-- get the postcodes
CREATE OR REPLACE TABLE postcodes_tbl AS FROM mca_data.postcodes_tbl;

DETACH mca_data;

DESCRIBE postcodes_tbl;

CREATE OR REPLACE TABLE buf_postcodes_tbl AS SELECT * FROM postcodes_tbl
INNER JOIN lep_buffer ON ST_Within(postcodes_tbl.geom, lep_buffer.geo_buf);

CREATE OR REPLACE TABLE twog_postcodes_all_tbl AS
FROM read_xlsx('data/postcodes-containing-premises-where-only-o2-provides-2g-coverage--using-more-conservative-threshold.xlsx');

CREATE OR REPLACE TABLE twog_postcodes_lep_buf_tbl AS
SELECT buf.pcds, buf.lat, buf.long, buf.geom
FROM twog_postcodes_all_tbl two_g
INNER JOIN buf_postcodes_tbl buf 
ON two_g.Postcode = buf.pcds;

COPY twog_postcodes_lep_buf_tbl TO 'data/twog_postcodes_lep_buf_tbl.geojson' (FORMAT GDAL, DRIVER 'GeoJSON');