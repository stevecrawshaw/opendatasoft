#%%
import requests
import polars as pl
import json
#%%
base_url = "https://westofenglandca.opendatasoft.com/api/explore/v2.1/"
catalog_datasets_endpoint = "/catalog/datasets"
query = {'limit': 100, 'select': 'dataset_id'}
#%%
ods_datasets = requests.get(base_url + catalog_datasets_endpoint, params = query)

# %%
ods_json = json.loads(ods_datasets.text)
#%%
dataset_ids = [dataset['dataset_id'] for dataset in ods_json['results']]
#%%
