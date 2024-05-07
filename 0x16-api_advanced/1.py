import requests

def number_of_subscribers(subreddit):
    """
    Returns the number of subscribers (not active users, total subscribers) for a given subreddit.
    """
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    custom_header = {"User-Agent": "MyRedditBot/1.0 (by /u/Background_Tap_166)"}
    data = requests.get(url, headers=custom_header, allow_redirects=False)
    
    # Check if the request was successful
    if data.status_code == 200:
        # Print the content of the response
        print(data.content)
        
        # Attempt to parse the JSON response
        response_data = data.json()
        response = response_data.get("data")
        
        if response:
            total_subscribers = response.get("subscribers")
            return total_subscribers
        else:
            return 0
    else:
        # Handle error cases (e.g., invalid subreddit)
        print("Error:", data.status_code)
        return 0

# Test the function
print(number_of_subscribers("programming"))

