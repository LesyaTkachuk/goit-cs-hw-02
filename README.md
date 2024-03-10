# goit-cs-hw-02

Docker basics and bash script creation

Run the next command to install all project dependancies:

    pip install -r requirements.txt

# task_1

Write the bash script to check the statuses of the websites and store the results into the log file.

To run the script execute the next command:

    bash task_1/website_status_check.sh

The results will be stored in website_status.log file

# task_2

Docker Compose adjustment and usage for the FastAPI application with PostgressSQL database

- run the Docker
- execute the next command to build the environment and run the Docker containers:

  docker-compose up -d

- check that both containers are running at the Docker
- check the website that is running on the localhost:80
- by clicking at the button "Check the database" the green alert with "Welcome to FastAPI!" message should appear
- in case of the error check if the given postgres database username and password and correct connection url
