---

# Reddit API Project

This project consists of several tasks that involve querying the Reddit API to retrieve information about subreddits, posts, and keywords. Below are the details and requirements for each task along with the recommended practices.

## Task 0: How many subs?

### Description
Write a function that queries the Reddit API and returns the number of subscribers for a given subreddit. If an invalid subreddit is provided, the function should return 0.

### Requirements
- Prototype: `def number_of_subscribers(subreddit)`
- Return 0 for invalid subreddits.
- Ensure not following redirects from invalid subreddits.

## Task 1: Top Ten

### Description
Write a function to query the Reddit API and print the titles of the first 10 hot posts for a given subreddit.

### Requirements
- Prototype: `def top_ten(subreddit)`
- Print "None" for invalid subreddits.
- Ensure not following redirects from invalid subreddits.

## Task 2: Recurse it!

### Description
Write a recursive function to query the Reddit API and return a list of titles of all hot articles for a given subreddit. Return None if no results are found.

### Requirements
- Prototype: `def recurse(subreddit, hot_list=[])`
- Use recursion instead of loops.
- Return None for invalid subreddits.

## Task 3: Count it!

### Description
Write a recursive function to query the Reddit API, parse the titles of all hot articles, and print a sorted count of given keywords.

### Requirements
- Prototype: `def count_words(subreddit, word_list)`
- Print counts in descending order and alphabetically for ties.
- Ignore special characters in keywords.
- Return nothing for invalid subreddits.

## Setup and Usage

1. Clone this repository:

   ```bash
   git clone https://github.com/alx-system_engineering-devops/0x16-api_advanced.git
   ```

2. Navigate to the appropriate directory:

   ```bash
   cd 0x16-api_advanced
   ```

3. Execute the Python scripts for each task:

   ```bash
   python3 0-main.py <subreddit>
   python3 1-main.py <subreddit>
   python3 2-main.py <subreddit>
   python3 100-main.py <subreddit> <list_of_keywords>
   ```

Replace `<subreddit>` with the desired subreddit name and `<list_of_keywords>` with a list of keywords separated by spaces for Task 3.

## Notes

- Ensure you have a working internet connection to query the Reddit API.
- Use a custom User-Agent to avoid Too Many Requests errors.
- Handle API responses gracefully, especially for invalid subreddits.
- Ensure your code follows PEP 8 style guidelines for readability and consistency.

---
