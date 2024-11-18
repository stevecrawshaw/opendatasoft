#%%
import polars as pl
import duckdb 

#%%

les = pl.read_parquet("data/local-energy-sites.parquet")

#%%
les.describe()

#%%
odi = pl.read_parquet("data/ods-api-monitoring.parquet")

#%%
odi.unique()

#%%
#%%


#%%


#%%
#%%


#%%


#%%
