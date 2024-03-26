## Web Stack Debugging 0

### Task: Give Me a Page!

In this debugging project, the goal is to get Apache to run inside a Docker container and return a page containing "Hello Holberton" when querying the root of the container.

#### Instructions:
1. Read the [Docker concept page](https://www.docker.com/resources/what-container).
2. Run the provided Docker command to start the container: 
   ```bash
   docker run -p 8080:80 -d -it holbertonschool/265-0
   ```
3. Check if the container is running using `docker ps`.
4. Use `curl` to query the container at port 8080: 
   ```bash
   curl 0:8080
   ```
   If you encounter an error message or an empty reply from the server, proceed to fix the issue.

#### Solution:
After connecting to the container and identifying the issue, follow these steps to fix it:
- [Add steps to fix the issue here]

#### Additional Notes:
- Ensure the Docker container is running properly and Apache is configured to serve the correct page.
- Document any troubleshooting steps or commands used to resolve the issue.
- Verify that accessing the container at port 8080 returns the expected page content.

By completing this task, you'll gain valuable experience in debugging web stack issues and working with Docker containers.

**Repository Information:**
- GitHub Repository: [alx-system_engineering-devops](https://github.com/alx-system_engineering-devops)
- Directory: 0x0D-web_stack_debugging_0
- File: 0-give_me_a_page
