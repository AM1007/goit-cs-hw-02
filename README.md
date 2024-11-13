## Module Assignment: "Fundamentals of Operating Systems"

### Task 1

Write a script that automatically checks the availability of specific websites. The script should use the curl command to send HTTP GET requests to each site in a list and verify the response.

**Step-by-Step Instructions**

1. List of Websites: Define an array in your script containing the URLs of the websites to be checked, such as

- https://google.com,
- https://facebook.com,
- https://twitter.com.

2. Availability Check: The script should use curl to check each website in the list, ensuring that each one returns an HTTP status code of 200, which indicates that the site is accessible.

3. Log Results to a File: For each website, record the check result (whether it’s accessible or not) in a log file. The name of this log file should be specified within the script.

4. Output Formatting: The results should be clearly formatted, for example:

```
"https://google.com is UP"
"https://twitter.com is DOWN"
```

5. Output Message: After running the script, display a message indicating that results have been logged and provide the log file's name.

**Example Script Execution**

The script executes and outputs results to a file named `website_status.log`. Entries in this log file show the status (UP or DOWN) of each website at the time the script was run, for example:

```
https://google.com is UP
https://facebook.com is UP
https://twitter.com is UP
```

**Acceptance Criteria**

- The script is written in Bash.
- The script handles URL redirection.
- A loop is used to iterate over all websites in the list.
- The curl command is used to verify HTTP responses.
- Check results are saved to a log file, and a message confirms logging.
- Code is formatted neatly and clearly.

---

### Task 2

1. Create Dockerfile: Write a Dockerfile with instructions to build a Docker image for the application.
2. Write docker-compose.yaml: Create a docker-compose.yaml file to configure both the application and a PostgreSQL database.
3. Use Docker Compose: Use Docker Compose to set up the environment, running docker-compose up to start everything.
4. Check Functionality: Verify the application’s functionality and database connectivity.

**Acceptance Criteria**

- The repository is cloned, and a Dockerfile is created to build the application’s Docker image.
- A docker-compose.yaml file is written to configure the application and PostgreSQL.
- Docker Compose is used, and the environment is set up with docker-compose up.
- The application is functional, and the database is accessible, verified by testing the database connection with the "Check DB" option.
