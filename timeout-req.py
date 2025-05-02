# %%

# /// script
# dependencies = [
#   "requests<3"
# ]
# ///

# %%
import time

import requests

# %%
# --- Configuration ---
TARGET_URL = "https://opendata.westofengland-ca.gov.uk"
# List of timeout values (in seconds) to test.
# These represent common reasonable values.
TIMEOUT_VALUES = [1, 3, 5]
# Set a user agent (good practice)
HEADERS = {"User-Agent": "Python Timeout Test Script (requests library)"}
# --- End Configuration ---


# %%
def test_timeout(url, timeout_sec, headers):
    """
    Attempts a GET request to the URL with a specific timeout.

    Args:
        url (str): The URL to request.
        timeout_sec (float): The timeout value in seconds.
        headers (dict): Dictionary of request headers.

    Returns:
        tuple: (status, message, duration)
               status (str): 'SUCCESS', 'TIMEOUT', 'ERROR'
               message (str): Description of the outcome.
               duration (float): Time taken for the attempt in seconds.
    """
    print(f"\n--- Testing Timeout: {timeout_sec} seconds ---")
    start_time = time.time()
    try:
        # Make the GET request with the specified timeout
        # 'timeout=N' applies to both connect and read timeouts together.
        # You could use a tuple for separate connect/read: timeout=(5, 15)
        response = requests.get(
            url, timeout=timeout_sec, headers=headers, stream=True
        )  # Use stream=True initially

        # Check if the connection itself was successful (headers received)
        # Now try to read a small part of the content to trigger read timeout check if needed
        # Reading the first chunk is usually very fast if server responds promptly
        first_chunk = next(
            response.iter_content(chunk_size=1024, decode_unicode=True), None
        )
        end_time = time.time()
        duration = end_time - start_time

        # Explicitly check status code after ensuring we could read *something*
        response.raise_for_status()  # Raises HTTPError for bad responses (4xx or 5xx)

        return (
            "SUCCESS",
            f"Status Code: {response.status_code}. Request successful within {timeout_sec}s.",
            duration,
        )

    except requests.exceptions.Timeout:
        # Catches both ConnectTimeout and ReadTimeout if timeout is a single float
        end_time = time.time()
        duration = end_time - start_time
        return "TIMEOUT", f"Request timed out after {timeout_sec} seconds.", duration

    except requests.exceptions.ConnectionError as e:
        end_time = time.time()
        duration = end_time - start_time
        return "ERROR", f"Connection Error: {e}", duration

    except requests.exceptions.HTTPError as e:
        end_time = time.time()
        duration = end_time - start_time
        return (
            "ERROR",
            f"HTTP Error: {e.response.status_code} {e.response.reason}",
            duration,
        )

    except requests.exceptions.RequestException as e:
        # Catch any other request-related exceptions
        end_time = time.time()
        duration = end_time - start_time
        return "ERROR", f"General Request Error: {e}", duration

    finally:
        # Ensure the connection is closed if response object exists
        if "response" in locals() and response:
            response.close()


# --- Main Execution ---
if __name__ == "__main__":
    print(f"Starting timeout tests for URL: {TARGET_URL}")
    print(f"Testing with timeout values (seconds): {TIMEOUT_VALUES}")
    print("-" * 40)

    results = {}

    for timeout in TIMEOUT_VALUES:
        status, message, duration = test_timeout(TARGET_URL, timeout, HEADERS)
        results[timeout] = {"status": status, "message": message, "duration": duration}
        print(f"Result: {status}")
        print(f"Details: {message}")
        print(f"Time elapsed for attempt: {duration:.4f} seconds")

        # Optional: Add a small delay between tests to be polite to the server
        time.sleep(1)

    print("\n" + "-" * 40)
    print("--- Test Summary ---")
    for timeout, result in results.items():
        print(
            f"Timeout Setting: {timeout:>3}s | Status: {result['status']:<8} | Duration: {result['duration']:.4f}s | Message: {result['message']}"
        )
    print("-" * 40)
    print("Testing complete.")

    # --- Interpretation Guidance ---
    print("\nInterpretation:")
    print(
        "- SUCCESS indicates the request (connection and receiving initial data) completed within the set timeout."
    )
    print("- TIMEOUT indicates the operation took longer than the set timeout.")
    print(
        "- ERROR indicates other issues (DNS, connection refused, HTTP error status)."
    )
    print(
        "- A 'sane' timeout is typically one that consistently results in SUCCESS under normal conditions,"
    )
    print("  balancing responsiveness with tolerance for network/server fluctuations.")
    print(
        "- Very short timeouts (e.g., 1s) might fail frequently depending on network latency."
    )
    print(
        "- Consistently long durations (>5s) might indicate a slow server or large initial response."
    )
    print(
        "- Remember network conditions can vary, run multiple times for more reliable data."
    )
