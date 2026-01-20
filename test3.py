import importlib.util
from pathlib import Path

import requests

spec = importlib.util.spec_from_file_location("ods_datasets_mod", "ods-datasets.py")
mod = importlib.util.module_from_spec(spec)
spec.loader.exec_module(mod)

session = requests.Session()
base_url = mod.BASE_URL_TPL.format(domain=mod.DEFAULT_DOMAIN)
config_path = Path("config.yml")
try:
    api_key = mod.load_api_key(config_path)
    cred = {"apikey": api_key}
except Exception as e:
    print("config.yml not found or failed to load; proceeding without apikey:", e)
    cred = {}

params = {**mod.QUERY_LIMIT_PARAM, **cred}
print("Fetching catalog metadata...")
catalog = mod.fetch_catalog_metadata(base_url, params, session)
items = mod.build_export_info(catalog)[:3]
if not items:
    print("No datasets found in catalog; aborting")
else:
    print("Will download datasets:", [it["id"] for it in items])
    mod.SAVE_FOLDER.mkdir(parents=True, exist_ok=True)
    mod.download_ods(session, base_url, items, mod.SAVE_FOLDER, cred)
    print("Download test completed")
