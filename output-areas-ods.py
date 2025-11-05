# %%
import duckdb
import httpx
import polars as pl

# %%
base_url = "https://public.opendatasoft.com/api/explore/v2.1/catalog/datasets/georef-united-kingdom-output-areas-millesime/exports/parquet"

# %%
# print(full_url)
# %%
params = {
    "where": "startswith(msoa_name, 'South Gloucestershire') OR startswith(msoa_name, 'North Somerset') OR startswith(msoa_name, 'Bristol') OR startswith(msoa_name, 'Bath')",
}

# %%

r = httpx.get(base_url, params=params, timeout=40.0)
# %%
r.status_code
# %%
r.url
# %%

pl.read_parquet(r.content).write_parquet("data/output-areas-ods.parquet")
# %%
duckdb.execute("INSTALL SPATIAL;")
duckdb.execute("LOAD SPATIAL;")
# %%

oa_tbl = duckdb.read_parquet("data/output-areas-ods.parquet")

# %%
oa_tbl.describe()

# %%


# %%


# %%


# %%
