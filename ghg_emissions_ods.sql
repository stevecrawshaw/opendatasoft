duckdb
ATTACH '../mca-data/data/ca_epc.duckdb' AS ca_epc;

duckdb '../mca-data/data/ca_epc.duckdb' -ui

SELECT name FROM (SHOW ALL TABLES) WHERE name LIKE '%emission%';

FROM ca_epc.ca_emissions_evidence_long_tbl;

DESCRIBE ca_epc.ca_emissions_evidence_long_tbl;


FROM ca_epc.ghg_emissions_tbl;

DESCRIBE ca_epc.ghg_emissions_tbl;

.tables

DROP TABLE IF EXISTS ca_epc.ca_emissions_evidence_long_tbl;





SHOW DATABASES;
ATTACH 'md:';
-- md authentication is in the .env variable

CREATE OR REPLACE DATABASE mca_data FROM ca_epc;