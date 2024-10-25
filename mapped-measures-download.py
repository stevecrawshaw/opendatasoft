#%%
import requests
from urllib.parse import urlparse, parse_qs, urlunparse, urlencode

#%%

base_url = r"https://opendata.westofengland-ca.gov.uk/"
#%%
catalogs_path = r'/api/explore/v2.1/catalog/datasets'
# parameters for the catalog search
# we search in the where clause for the string "mapped"
# We will get back a json which holds a results array with 
# the dataset id's with "mapped" in their name
# this will be used to construct a list of urls to download the geojson
# for each dataset
# The API doesn't seem to support more advanced formats like FGB or parquet
# even though these are available in the exports tab for the dataset


params = {'select': ['dataset_id'],
 'where': ['search(dataset_id, "mapped")'],
 'limit': ['100'],
 'offset': ['0'],
 'timezone': ['UTC'],
 'include_links': ['false'],
 'include_app_metas': ['false']}
#%%
parsed_url = urlparse(base_url)

# %%
query_string = urlencode(params, doseq=True)
url = urlunparse((parsed_url.scheme,
                  parsed_url.netloc,
                  catalogs_path, '',
                  query_string, ''))
print(url)
# %%
resp = requests.get(url)

#%%

results = resp.json()['results']
print(results)
#%%
#%%
def get_dl_url(dataset_id):
    """
    Constructs a download URL for a given dataset ID.
    This function generates a URL to download data in GeoJSON format from a specified dataset.
    The URL includes parameters to set the download limit, timezone, label usage, and coordinate system.
    Args:
        dataset_id (str): The unique identifier of the dataset to download.
    Returns:
        str: A URL string that can be used to download the dataset in GeoJSON format.
    """

    dl_params = {'limit': ['-1'],
                'timezone': ['UTC'],
                'use_labels': ['false'],
                'epsg': ['4326']}

    dl_endpoint = r"/exports/geojson"

    dl_qs = urlencode(dl_params, doseq=True)
    
    return urlunparse((parsed_url.scheme,
                    parsed_url.netloc,
                    catalogs_path + '/' + dataset_id + dl_endpoint,
                    '',
                    dl_qs,
                    ''))

#%%
# this is a list of tuples which contains the dataset id and the download url

dl_url_list = [(result['dataset_id'],
                get_dl_url(result['dataset_id'])) 
                for result 
                in results]
print(dl_url_list)
#%%

def download_geojson(dl_url):
    """
    Downloads a GeoJSON file from a given URL and saves it to the local file system.
    Args:
        dl_url (tuple): A tuple containing the name of the file (str) and the URL (str) to download the GeoJSON from.
    Returns:
        int: Returns 0 if the download was successful.
        None: Returns None if the download failed.
    """

    resp_dl = requests.get(dl_url[1])
    download_path = f"data/{dl_url[0]}.geojson"
    with open(download_path, 'wb') as f:
        f.write(resp_dl.content)
        print(f"Downloaded {dl_url[0]}")
    if resp_dl.status_code == 200:
        return 0
    else:
        return None

#%%
[download_geojson(dl_url) for dl_url in dl_url_list]

# %%
