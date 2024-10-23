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

#%%

def get_sheet(file_path: str, sheet_name: str) -> pl.DataFrame:
    return (pl
            .read_excel(file_path, sheet_name = sheet_name)
            .clean_names(remove_special = True))

#%%
def clean_postcode(df: pl.DataFrame, postcode_col: str) -> pl.DataFrame:

    """
    Cleans and validates UK postcodes in a Polars DataFrame.
    This function processes a specified column containing UK postcodes by:
    - Removing spaces and converting to uppercase.
    - Splitting the postcode into start and end segments.
    - Reconstructing the cleaned postcode.
    - Validating the cleaned postcode against a regex pattern.
    Args:
        df (pl.DataFrame): The input Polars DataFrame containing postcode data.
        postcode_col (str): The name of the column containing postcodes. If None, the function will attempt to find a column with "postcode" in its name.
    Returns:
        pl.DataFrame: A new DataFrame with the cleaned and validated postcodes, and a boolean column indicating validity.
    Raises:
        ValueError: If no postcode column is found in the DataFrame.
    """
   
    if postcode_col is None:
        postcode_col = next((col 
                             for col 
                             in df.columns 
                             if "postcode" in col.lower()),
                               None)
        
    if postcode_col is None:
        raise ValueError("No postcode column found")
    

    return (df
            .with_columns(pl.col(postcode_col)
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
                            .alias("postcode_clean"))
            .with_columns(valid_pc = pl.col("postcode_clean")
                          .str
                          .contains("^(?:(?:[A-Z]{1,2}[0-9][0-9]?[A-Z]?[ ]?[0-9][A-Z]{2})|(?:[A-Z]{1}[0-9]{1,2}[ ]?[0-9][A-Z]{2}))$")
                          .alias("valid_pc"))
            .drop(["postcode_start", "postcode_end", "postcode"])
   )

#%%

df_applicant =  get_sheet(file_path = "data/Made Smarter postcodes.xlsx",
                          sheet_name = "Full MS applicant list")   

#%%

df_applicant_clean = clean_postcode(df_applicant,
                                    postcode_col = None)
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