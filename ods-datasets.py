#%%
import requests
import json
from yaml import safe_load
from urllib.parse import urlparse

#%%
# This script downloads all datasets from the Open Data Soft platform
# for a given domain. The datasets are downloaded in the geojson format if there is geo data types
# in the API response for the dataset ID, otherwise the datasets are downloaded in the csv format.

#%%
def is_valid_url(url):
    '''
    Check if a given URL is valid returning True if it is and False otherwise.
    '''
    try:
        result = urlparse(url)
        return all([result.scheme, result.netloc])
    except ValueError:
        return False
    
#%%
# Load API key from config file
api_key = safe_load(open('../config.yml'))['ods']['apikey']
#%%
domain = 'westofenglandca'
base_url = f"https://{domain}.opendatasoft.com/api/explore/v2.1"
catalog_datasets_endpoint = "/catalog/datasets"
export_endpoint = "/exports/"
query_limit_param = {'limit': 100}
cred_param = {'apikey': api_key}
query_params = {**query_limit_param, **cred_param}
save_folder = 'data/ods-datasets/'

#%%
# Get datasets from ODS selecting only the first 100 and passing the api key
# for monitoring (nor required for authentication)
ods_datasets = requests.get(f'{base_url}{catalog_datasets_endpoint}',
                            params = query_params)
# %%
ods_json = json.loads(ods_datasets.text)

#%%
# Check if the datasets have geometry data
geo_data = [ bool(d['metas']['default']['geometry_types']) for d in ods_json['results']]
#%%
# Define the export format based on the presence of geometry data
export_format = ['geojson' if geo else 'csv' for geo in geo_data]

#%%
datasets_id = [item['dataset_id'] for item in ods_json['results']]
#%%
# Create a list of urls to download the datasets
url_list = [f'{base_url}{catalog_datasets_endpoint}/{dataset_id}{export_endpoint}{export_format[i]}' 
            for i, dataset_id 
            in enumerate(datasets_id)]
url_list
#%%
url_list_parquet = [f'{base_url}{catalog_datasets_endpoint}/{dataset_id}/exports/parquet' for dataset_id in datasets_id]
#%%
all_valid_urls = all([is_valid_url(url) for url in url_list])
all_valid_parquet_urls = all([is_valid_url(url) for url in url_list_parquet])
#%%
def download_ods(url_list: list[str],
                 save_folder: str,
                 valid_urls: bool,
                 datasets_id: list[str],
                 cred_param: dict) -> bool: 
   if not valid_urls:
       print("Some urls are not valid. Please check the urls.")
       return False
   else:
        for i, url in enumerate(url_list):
            print(f"Downloading {url}")
            r = requests.get(url, params = cred_param)
            with open(f'{save_folder}{datasets_id[i]}.{export_format[i]}', 'wb') as f:
                f.write(r.content)
        return True
#%%
# test data
ul = url_list[0:2]
di = datasets_id[0:2]

download_ods(ul, save_folder, all_valid_urls, di, cred_param)

#%%
# Download all datasets
#download_ods(url_list, save_folder, all_valid_urls, datasets_id, cred_param)

#%%
# try parquet

#%%

def download_ods_parquet(url_list: list[str],
                 save_folder: str,
                 valid_urls: bool,
                 datasets_id: list[str],
                 geo_data: list[bool],
                 cred_param: dict) -> bool: 
   if not valid_urls:
       print("Some urls are not valid. Please check the urls.")
       return False
   else:
        geo_label = ['_geo' if geo else '_tab' for geo in geo_data]
        for i, url in enumerate(url_list):
            print(f"Downloading {url}")
            r = requests.get(url, params = cred_param)
            with open(f'{save_folder}{datasets_id[i]}{geo_label[i]}.parquet', 'wb') as f:
                f.write(r.content)
        return True
   
   #%%

download_ods_parquet(url_list_parquet,
                     save_folder,
                     all_valid_parquet_urls,
                     datasets_id,
                     geo_data,
                     cred_param)

   #%%