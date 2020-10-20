FROM python:3.8-buster

# Add Python packages that you want to install here
RUN pip install pandas==1.1.3
RUN pip install mysql-connector==2.2.9
RUN pip install sqlalchemy==1.2.19
RUN pip install pymysql==0.9.3
RUN pip install boto3

COPY . .

CMD [ "python"]
