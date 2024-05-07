#!/usr/bin/python3
"""
 A function that queries the Reddit API and returns the number of subscribers (not active users, total subscribers) for a given subreddit. 
 If an invalid subreddit is given, the function should return 0.
 """
import requests

def number_of_subscribers(subreddit):
    """
    returns the number of subscribers (not active users, total subscribers) for a given subreddit.
    """
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    custom_header = { "User-Agent": "Mozilla/5.0" }
    data = requests.get(url, headers=custom_header, allow_redirects=False)
    if data.status_code == 200:
        response = data.json()
        total_subscribers = response['data']['subscribers']
        return total_subscribers
    else:
        return 0
