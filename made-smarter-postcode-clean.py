#%%

import polars as pl
import duckdb
from janitor.polars import clean_names
import polars.selectors as cs

#%%
def import_clean_postcodes(file_path: str,
                           sheet_name: str,
                           type_name: str):
    
    raw_df = pl.read_excel(file_path, sheet_name=sheet_name)
    t = type_name
        
    clean_df = (
        raw_df
        .clean_names()
        .with_columns(cs.contains("postcode")
        .str
        .replace_all(" ", "")
        .str
        .to_uppercase()
        .alias("postcode"))
        .with_columns(pl.col("postcode").str.slice(-3).alias("postcode_end"))
        .with_columns(
            pl.when(pl.col("postcode").str.len_chars() == 7)
            .then(pl.col("postcode").str.slice(0, 4))
            .otherwise(pl.col("postcode").str.slice(0, 3))
            .alias("postcode_start")
        )
        .with_columns(
            pl.concat_str([pl.col("postcode_start"),
                        pl.col("postcode_end")],
                        separator=" ")
                        .alias("postcode_clean")

    )
    .filter(pl.col("postcode_clean").str
            .contains("^(?:(?:[A-Z]{1,2}[0-9][0-9]?[A-Z]?[ ]?[0-9][A-Z]{2})|(?:[A-Z]{1}[0-9]{1,2}[ ]?[0-9][A-Z]{2}))$"))
            .group_by("postcode_clean").len()
            .rename({"len": "count"})
    .with_columns(type = pl.lit(type_name))       
    .select(pl.col(["postcode_clean", "count", "type"]))
    )
    return clean_df
#%%

df_applicant = import_clean_postcodes(file_path = "data/Made Smarter postcodes.xlsx",
                            sheet_name = "Full MS applicant list",
                            type_name = "Applicant")

df_onboarded = import_clean_postcodes(file_path = "data/Made Smarter postcodes.xlsx",
                                      sheet_name = "Onboarded MS businesses",
                                      type_name="Onboarded")

#%%

df_made_smarter_all_df = pl.concat([df_applicant, df_onboarded],
                                   how = "vertical")

#%%
con = duckdb.connect("../weca_cesap/data/postcodes.duckdb")

#%%

con.sql("SHOW TABLES;")
# %%

all_postcodes = con.sql("FROM postcode_centroids_tbl").pl()

#%%
all_postcodes.glimpse()
#%%

made_smarter_ods_df = (all_postcodes
                       .join(df_made_smarter_all_df,
                             left_on="pcds",
                             right_on = "postcode_clean",
                             how="inner")
                             .select(["pcds", "lat", "long", "type", "count"])
                             .with_columns(pl.concat_str([pl.lit("{"), pl.col("lat"), pl.lit(", "), pl.col("long"), pl.lit("}")]).alias("geo_point_2d"))
                             .sort(["type", "count"])
)
#%%

made_smarter_ods_df.write_csv("data/made_smarter_ods.csv")
#%%
con.close()