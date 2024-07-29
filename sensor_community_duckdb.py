# %%
import duckdb
import polars as pl
import polars.selectors as cs

# %%

bme_df = duckdb.read_csv(
    "data/2023-01_bme280/2023-01_bme280.csv", header = True,
    sep = ";")
    
# %%

bme_df

