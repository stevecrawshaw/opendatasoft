#%%
import requests
import polars as pl
import json


#%%
base_url = "https://westofenglandca.opendatasoft.com/api/explore/v2.1/"
catalog_datasets_endpoint = "/catalog/datasets"
query = {'limit': 100, 'select': 'dataset_id, metas'}
#%%
#ods_datasets = requests.get(base_url + catalog_datasets_endpoint, params = query)

#%%
ods_datasets = requests.get(base_url + catalog_datasets_endpoint)
# %%
ods_json = json.loads(ods_datasets.text)

#%%
geo_data = [not d['metas']['default']['geometry_types'] for d in ods_json['results']]

#%%
datasets_id = [item['dataset_id'] for item in ods_json['results']]
#%%
dataset_ids = [dataset['dataset_id'] for dataset in ods_json['results']]
#%%
