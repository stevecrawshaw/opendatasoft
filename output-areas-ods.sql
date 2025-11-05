duckdb

LOAD SPATIAL;
LOAD HTTPFS;

SET VARIABLE oa_parquet_url='https://public.opendatasoft.com/api/explore/v2.1/catalog/datasets/georef-united-kingdom-output-areas-millesime/exports/parquet?where=startswith%28msoa_name%2C+%27South+Gloucestershire%27%29+OR+startswith%28msoa_name%2C+%27North+Somerset%27%29+OR+startswith%28msoa_name%2C+%27Bristol%27%29+OR+startswith%28msoa_name%2C+%27Bath%27%29';

SELECT * FROM read_parquet(getvariable('oa_parquet_url')) LIMIT 5;

CREATE OR REPLACE TABLE output_areas_ods AS
SELECT * EXCLUDE(geo_point_2d,
                ctry_code,
                ctry_name,
                oa_area_code,
                oa_type,
                oa_name,
                "year")
FROM read_parquet(getvariable('oa_parquet_url'));

COPY output_areas_ods TO 'data/output-areas-ods.geojson' (FORMAT GDAL, DRIVER 'GeoJSON');