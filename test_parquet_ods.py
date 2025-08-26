# %%
import io

import polars as pl
import requests

# %%
epc_df = pl.read_parquet(
    r"https://opendata.westofengland-ca.gov.uk/api/explore/v2.1/catalog/datasets/lep-epc-domestic-point/exports/parquet?lang=en&refine=built_form%3A%22Enclosed%20End-Terrace%22&facet=facet(name%3D%22built_form%22%2C%20disjunctive%3Dtrue)&timezone=Europe%2FLondon"
)
# %%

# The URL for the API endpoint
url = r"https://opendata.westofengland-ca.gov.uk/api/explore/v2.1/catalog/datasets/lep-epc-domestic-point/exports/parquet?lang=en&refine=built_form%3A%22Enclosed%20End-Terrace%22&facet=facet(name%3D%22built_form%22%2C%20disjunctive%3Dtrue)&timezone=Europe%2FLondon"

try:
    # 1. Make a GET request to the URL
    response = requests.get(url)

    # 2. Raise an exception if the request was unsuccessful (e.g., 404, 500)
    response.raise_for_status()

    # 3. Read the binary content of the successful response into an in-memory buffer
    buffer = io.BytesIO(response.content)

    # 4. Read the parquet data from the buffer
    epc_df = pl.read_parquet(buffer)

    print(epc_df)

except requests.exceptions.RequestException as e:
    print(f"Error downloading the file: {e}")
except Exception as e:
    print(f"Error reading the Parquet file: {e}")
# %%

# %%

# %%

# %%

# %%

# %%

# %%
