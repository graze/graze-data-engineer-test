# Data Engineer Test 

This repository contains a dockerised PHP application with a MySQL database. It is the starting point for an ETL process to import data from CSV files into a MySQL database table.

## Context
Account Managers in the Retail Team at graze receive weekly sales data from each of the retailers that sell our products in their stores. 

This data comes in different formats (CSV, Excel, etc), and the structure of these files are inconsistent, but ultimately they contain the same information - sales volume and value, by week, by store, by product.

Rather than each Account Manager reporting on their own retailer's data, using the raw data, the Data Team centralise this data and report on all retailers' sales consistently.  

This clean, centralised data is then accessed by Data Analysts to analyse and visualise in a business intelligence tool.

## Codebase contents

The codebase consists of:
- 2 CSVs in the `files/` directory
    - 1 containing Waitrose sales data and 1 containing Tesco sales data
    - Note: the data in these files is fabricated
- a SQL file, which should contain any MySQL table definitions for your database: `schema/tables.php` 
- an empty PHP script that needs to be written: `scripts/importFileToDatabase.php`
- an empty directory in which to write any library code you might need to implement: `src/` (you can delete the `.keep` file in here, it doesn't serve any purpose except to add an empty directory to git)

## Codebase setup

1. Set up a new repository on your local machine and call it something sensible (`graze-data-engineer-test-<your_name>`, where `<your_name>` is your name).
1. Clone this GitHub repository into your new local repository: 
```
git clone git@github.com:graze/graze-data-engineer-test.git graze-data-engineer-test-<your_name>
``` 
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

## Running your application

To build your services, run:
```
docker-compose build
```

To run your script, run:
```
docker-compose run --rm application php /scripts/importFileToDatabase.php
```

Run this before you make any changes to the script and ensure that it prints "Hello, World!". If it does, you're ready to go! (If not, get in touch - it should work!)

The first time you run this, it will be fairly slow (it needs to pull the mysql image from Docker Hub). Subsequent runs should be faster!

## Technical test:
Aim to spend no more than 2-3 hours on the technical test. You can explain what you'd have done differently given more time in the 'Follow-up questions' section.

Write your answers to the 'Follow-up questions', along with any additional information about your implementation, in the empty markdown file: `NOTES.md`. 

Please also include in `NOTES.md` instructions for how to run your code (if different to the instructions in the 'Running your application' section above).

**Main exercise:**

**Please add all necessary code to the repository in order to read the 2 CSVs, transform the data and load them into one analyst-ready database table.**

You may want to do the following things:
- write CREATE TABLE syntax in `schema/tables.sql` with a sensible name and table structure
- write the script `scripts/importFileToDatabase.php`
- add supporting classes in `src/` directory

Follow-up questions:
1. How much experience do you have working with PHP?
1. If you had more time, what further improvements would you add? If you weren't able to spend as long as you'd have liked, use this as an opportunity to tell us what you would have done differently.
1. Imagine you were going to put this code into production. What additional features / tools might you need to consider implementing to minimise the ongoing involvement of the Data Team in the file import process?
1. How did you find the test? We'd love to hear any improvements you might have!  

## Submission

1. Please submit your completed code as a single zip file named `graze_data_engineer_test_<your_name>.zip` (where `your_name` is your name)
1. Share this zip file with us via email
