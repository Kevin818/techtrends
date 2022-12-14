
# use the Python:3.8 base image
FROM python:3.8-buster

# set the working directory 
COPY ./techtrends /app
WORKDIR /app

# import dependencies using `` and build the application using `` command
# local env need use proxy  --proxy=http://185.46.212.97:10015
RUN pip install -r requirements.txt 

RUN python init_db.py

# expose the port 3111
EXPOSE 3111

CMD [ "python", "app.py" ]