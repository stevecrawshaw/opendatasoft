"""Download OpenDataSoft datasets as parquet files.

This module fetches dataset metadata from an OpenDataSoft domain and
downloads dataset exports. Parquet is preferred; downloaded files are
saved under `data/ods-datasets/` with a `_geo` or `_tab` suffix to
indicate whether the dataset contains geometry.

Basic usage:
    python ods-datasets.py

Configuration:
Provide a `config.yml` with the following structure::

    ods:
      apikey: YOUR_API_KEY

The API key is optional for public endpoints but recommended.
"""

# %%
import logging
from pathlib import Path
from typing import Dict, List
from urllib.parse import urlparse

import requests
from yaml import safe_load

try:
    from tqdm import tqdm
except Exception:  # pragma: no cover - optional dependency
    tqdm = None

# %%
# This script downloads all datasets from the Open Data Soft platform
# for a given domain. The datasets are downloaded in the geojson format if there is geo data types
# in the API response for the dataset ID, otherwise the datasets are downloaded in the csv format.


# %%
def is_valid_url(url: str) -> bool:
    """Return True if ``url`` is an absolute URL with scheme and netloc.

    The function performs a minimal validation using :func:`urllib.parse.urlparse`.
    It intentionally does not attempt network access or DNS resolution.
    """
    try:
        result = urlparse(url)
        return bool(result.scheme and result.netloc)
    except ValueError:
        return False


# %%
logging.basicConfig(level=logging.INFO, format="%(message)s")
logger = logging.getLogger(__name__)


def load_api_key(config_path: Path) -> str:
    """Load the OpenDataSoft API key from a YAML config file.

    Args:
        config_path: path to a YAML file containing an `ods` mapping with
            an `apikey` value.

    Returns:
        The API key string.

    Raises:
        FileNotFoundError: if the file does not exist.
        KeyError: if the expected keys are not present in the YAML.
    """
    data = safe_load(config_path.read_text())
    return data["ods"]["apikey"]


DEFAULT_DOMAIN = "westofenglandca"
BASE_URL_TPL = "https://{domain}.opendatasoft.com/api/explore/v2.1"
CATALOG_DATASETS_ENDPOINT = "/catalog/datasets"
EXPORT_ENDPOINT = "/exports/"
QUERY_LIMIT_PARAM = {"limit": 100}
SAVE_FOLDER = Path("data/ods-datasets")


# %%
# Get datasets from ODS selecting only the first 200 and passing the api key
# for monitoring (nor required for authentication)
def fetch_catalog_metadata(
    base_url: str, params: Dict[str, str], session: requests.Session
) -> Dict:
    """Fetch the catalog metadata JSON from the ODS explore API.

    Args:
        base_url: base API URL for the domain (e.g. https://<domain>.opendatasoft.com/api/explore/v2.1).
        params: query parameters to pass to the request (may include `limit` and `apikey`).
        session: a :class:`requests.Session` instance to use for the request.

    Returns:
        Parsed JSON response as a Python mapping.

    Raises:
        requests.HTTPError: on non-2xx responses.
    """
    resp = session.get(f"{base_url}{CATALOG_DATASETS_ENDPOINT}", params=params)
    resp.raise_for_status()
    return resp.json()


def build_export_info(catalog_json: Dict) -> List[Dict[str, str]]:
    """Extract per-dataset export preferences from the catalog JSON.

    The returned list contains a mapping for each dataset with keys:
    - ``id``: the dataset identifier
    - ``format``: preferred export format (``parquet`` by default)
    - ``geo``: boolean indicating whether the dataset contains geometry

    The function prefers Parquet exports for all datasets; the caller
    can use the ``geo`` flag to choose an appropriate filename suffix.
    """
    results = catalog_json.get("results", [])
    items = []
    for r in results:
        dataset_id = r["dataset_id"]
        geo = bool(r["metas"]["default"].get("geometry_types"))
        items.append({"id": dataset_id, "format": "parquet", "geo": geo})
    return items


# %%
def download_file(
    session: requests.Session,
    url: str,
    dest: Path,
    params: Dict = None,
    chunk_size: int = 1024,
) -> None:
    """Stream-download a URL to ``dest`` using ``session``.

    Writes data to ``dest`` in chunks and optionally displays a
    progress bar when ``tqdm`` is available. The function will raise
    an exception for non-success HTTP responses.

    Args:
        session: requests session used to perform the GET request.
        url: resource URL to download.
        dest: destination file path to write the content to.
        params: optional query parameters to include in the request.
        chunk_size: size of chunks (in bytes) to iterate over.
    """
    resp = session.get(url, params=params, stream=True)
    resp.raise_for_status()
    total = int(resp.headers.get("content-length", 0))
    dest.parent.mkdir(parents=True, exist_ok=True)
    if tqdm:
        with (
            open(dest, "wb") as f,
            tqdm(total=total, unit="B", unit_scale=True, desc=dest.name) as pbar,
        ):
            for chunk in resp.iter_content(chunk_size=chunk_size):
                if chunk:
                    f.write(chunk)
                    pbar.update(len(chunk))
    else:
        with open(dest, "wb") as f:
            for chunk in resp.iter_content(chunk_size=chunk_size):
                if chunk:
                    f.write(chunk)


def download_ods(
    session: requests.Session,
    base_url: str,
    items: List[Dict[str, str]],
    save_folder: Path,
    cred_param: Dict[str, str],
) -> bool:
    """Download a sequence of dataset exports.

    For each item the function constructs an export URL (parquet by
    default), validates the URL, and writes the export to ``save_folder``.
    Parquet files are named ``{dataset_id}_geo.parquet`` or
    ``{dataset_id}_tab.parquet`` depending on whether the dataset has
    geometry.

    Args:
        session: requests session used for downloads.
        base_url: API base URL for the domain.
        items: list of dataset metadata mappings as produced by
            :func:`build_export_info`.
        save_folder: destination folder for downloads.
        cred_param: query params (for example containing ``apikey``).

    Returns:
        True when processing completes (individual failures raise exceptions).
    """
    for item in items:
        dataset_id = item["id"]
        fmt = item.get("format", "parquet")
        # Prefer parquet exports; build the export URL explicitly
        export_path = f"{EXPORT_ENDPOINT}parquet"
        url = f"{base_url}{CATALOG_DATASETS_ENDPOINT}/{dataset_id}{export_path}"
        if not is_valid_url(url):
            logger.warning("Skipping invalid URL: %s", url)
            continue
        logger.info("Downloading %s", url)
        if fmt == "parquet":
            suffix = "_geo" if item.get("geo") else "_tab"
            dest = save_folder / f"{dataset_id}{suffix}.parquet"
        else:
            dest = save_folder / f"{dataset_id}.{fmt}"
        download_file(session, url, dest, params=cred_param)
    return True


# %%
# (Previously there were ad-hoc test calls here; removed in favour of CLI-driven runs.)


def main(
    domain: str = DEFAULT_DOMAIN,
    config_path: Path = Path("../config.yml"),
    limit: int | None = None,
) -> None:
    """Entry point: download datasets from a domain.

    Args:
        domain: OpenDataSoft domain (subdomain only, e.g. "westofenglandca").
        config_path: path to YAML config file containing the API key.

    The function loads the API key, fetches catalog metadata and
    downloads all datasets using the configured behaviour.
    """
    base_url = BASE_URL_TPL.format(domain=domain)
    try:
        api_key = load_api_key(config_path)
        cred_param = {"apikey": api_key}
    except Exception:
        logger.info(
            "No config.yml found or failed to load apikey; continuing without apikey"
        )
        cred_param = {}
    params = {**QUERY_LIMIT_PARAM, **cred_param}

    session = requests.Session()

    catalog = fetch_catalog_metadata(base_url, params, session)
    items = build_export_info(catalog)
    if limit:
        items = items[:limit]

    SAVE_FOLDER.mkdir(parents=True, exist_ok=True)
    download_ods(session, base_url, items, SAVE_FOLDER, cred_param)


if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser(
        description="Download OpenDataSoft datasets (parquet-first)"
    )
    parser.add_argument(
        "--domain", default=DEFAULT_DOMAIN, help="ODS domain (subdomain only)"
    )
    parser.add_argument(
        "--config", default="config.yml", help="Path to YAML config with ods.apikey"
    )
    parser.add_argument(
        "--limit",
        type=int,
        default=None,
        help="Limit number of datasets to download (for testing)",
    )
    args = parser.parse_args()

    main(domain=args.domain, config_path=Path(args.config), limit=args.limit)
