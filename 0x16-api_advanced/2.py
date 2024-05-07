import time
import requests

# Global variable to track last request time
last_request_time = 0

def make_request(url, headers):
    global last_request_time
    
    # Check time elapsed since last request
    elapsed_time = time.time() - last_request_time
    if elapsed_time < 2:  # Adjust this delay as needed to comply with Reddit's rate limits
        time.sleep(2 - elapsed_time)  # Wait to avoid rate limiting
    response = requests.get(url, headers=headers, allow_redirects=False)
    last_request_time = time.time()  # Update last request time
    return response

def number_of_subscribers(subreddit):
    """
    Returns the number of subscribers (not active users, total subscribers) for a given subreddit.
    """
    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    custom_header = { "User-Agent": "MyRedditBot/1.0 (by /u/Background_Tap_166)" }
    response = make_request(url, custom_header)
    
    # Check if the request was successful
    if response.status_code == 200:
        # Attempt to parse the JSON response
        response_data = response.json()
        response_data = response_data.get("data")
        
        if response_data:
            total_subscribers = response_data.get("subscribers")
            return total_subscribers
        else:
            return 0
    else:
        # Handle error cases (e.g., invalid subreddit)
        print("Error:", response.status_code)
        return 0

# Test the function
print(number_of_subscribers("programming"))

