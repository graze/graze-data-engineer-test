# INSTRUCTIONS
# Remove either the Python or PHP build steps from this file before building

###### Python Build ######
FROM python:3.8-buster
RUN pip install mysql-connector==2.2.9
RUN pip install sqlalchemy==1.2.19
RUN pip install pymysql==0.9.3
RUN pip install boto3

###### PHP Build ######
# FROM php:7.3-cli-alpine3.9
# RUN docker-php-ext-install pdo_mysql


# AWS auth credentials
ENV AWS_ACCESS_KEY_ID=INSERT
ENV AWS_SECRET_ACCESS_KEY=INSERT
