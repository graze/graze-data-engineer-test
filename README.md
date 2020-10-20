# Overview
This repository contains a dockerised application with a MySQL database. It is the starting point for an ETL process to import CSV files from a public AWS bucket into a MySQL database. There is the option to use either the PHP or Python Docker image, depending on what you are more comfortable with.

## Context
Account Managers in the Retail Team at graze receive weekly sales data from each of the retailers that sell our products in their stores. 

This data comes in different formats (CSV, Excel, etc), and the structure of these files are inconsistent, but ultimately they contain the same information - sales volume and value, by week, by store, by product.

Rather than each Account Manager reporting on their own retailer's data, using the raw data, the Data Team centralise this data and report on all retailers' sales consistently.

This clean, centralised data is then accessed by Data Analysts to analyse and visualise in a business intelligence tool.

## Codebase contents

The codebase consists of:
- an SQL file, which should contain any MySQL table definitions for your database: `schema/tables.sql` 
- Python and PHP docker directories (ues one or the other)
- `NOTES.md` to write your responses to the "Follow-up Questions", add any documentation for your code or add other notes that you want to provide.

## Codebase setup

1. Set up a new repository on your local machine and call it something sensible (`graze-data-engineer-test-<your_name>`, where `<your_name>` is your name).
1. Clone this GitHub repository into your new local repository: 
```
git clone git@github.com:graze/graze-data-engineer-test.git graze-data-engineer-test-<your_name>
``` 
1. Depending on which language you want to complete the challenge in, delete either the `PHP` or `Python` directory, as apparopriate.

Note: if you're using Windows, you'll need to use a BASH emulator such as [Git BASH](https://gitforwindows.org/) for running Git (and docker) commands from the command line.

## Docker setup

This application is Dockerised. If you've not used Docker before, here's a great 10 minute intro video: https://www.youtube.com/watch?v=YFl2mCHdv24.

1. Install [docker for mac](https://docs.docker.com/docker-for-mac/install/) or [docker for windows](https://docs.docker.com/docker-for-windows/install/)
1. If you don’t have a Docker account, sign up for one at hub.docker.com. Make note of your username.
1. Log in to the Docker public registry on your local machine, by running `docker login`
1. Test your docker set-up:
    1. Run `docker --version` and ensure you have a supported version of Docker
    1. Run `docker info` to view more details about your Docker installation
    1. Follow this 'get started' guide to learn more: https://docs.docker.com/get-started/
    
## MySQL Database Client

To interact with your MySQL database, you may want to install a MySQL client if you don't already have one on your machine.

1. Install [sequel pro for mac](https://sequelpro.com/download) or [HeidiSQL for windows](https://www.heidisql.com/download.php)
1. Connect to the database:
    1. Host: `127.0.0.1`
    1. Username: `user`
    1. Password: `password`
    1. Database: `retail`
    1. Port: `9906` 

## AWS setup
Below are the details of the bucket which contains the two CSVs for for this test. An AWS Access Key ID and Secret Access Key should have been provided to you via email. If these have not been provided, please send us an email. 

Bucket Name: public.data-engineer-tech-test
Objects:
    - raw_files/tesco_2020_10_18.csv
    - raw_files/sainsburys_2020_10_18.csv

If you are not familiar with the AWS SDK, below are links to the relevant Python and PHP SDK documentation
- https://aws.amazon.com/sdk-for-python/
- https://aws.amazon.com/sdk-for-php/

You will also want to install the AWS CLI from https://aws.amazon.com/cli/

## Running your application

To build your services, cd into either the `Python` or `PHP` sub-directory in the codebase and then run:
```
docker-compose build
```

To run your script, run either:
```
docker-compose run --rm application python /temp/hello_world.py

OR

docker-compose run --rm application php /temp/hello_world.php
```

Run this before you make any changes to the codebase and ensure that it prints "Hello, World!". If it does, you're ready to go! (If not, get in touch - it should work!)

The first time you run this, it will be fairly slow (it needs to pull the mysql image from Docker Hub). Subsequent runs should be faster!

Now that you are confident that everything is setup and working as expected, feel free to delete the `temp` directory created and add in all of the directories that you want/need for the test. 

If you are not familiar with mounting volumes in Docker, simply add the directories into the codebase as required and then update the `docker-compose.yml` file to mount them.

## Technical test:
Your code should, at a minimum, complete the following key data engineering steps:

- Download raw CSV files from the AWS bucket to your local environment
- Read, clean and transform the raw CSV data
- Load the cleaned data into the MySQL table(s) that you have designed

We do not expect a production quality solution, however we welcome and encourage you to include any best practices that you think would be useful. If you do not have time to implement everything, not to worry. Simply include details of what you would have done if you had more time in the `NOTES.md` file and we can talk through this during the interview. 

In addition, please provide responses to the 'Follow-up questions' listed below in the `NOTES.md` file. 

**Main exercise:**

**Please add all necessary code to the repository in order to read the 2 CSVs, transform the data and load them into one analyst-ready database table.**

## Follow-up questions:
1. How much experience do you have working with PHP?
1. If you had more time, what further improvements would you add? If you weren't able to spend as long as you'd have liked, use this as an opportunity to tell us what you would have done differently.
1. Imagine you were going to put this code into production. What additional features / tools might you need to consider implementing to minimise the ongoing involvement of the Data Team in the file import process?
1. How did you find the test? We'd love to hear any improvements you might have! 

## Submission

1. Please submit your completed code as a single zip file named `graze_data_engineer_test_<your_name>.zip` (where `your_name` is your name)
1. Share this zip file with us via email
