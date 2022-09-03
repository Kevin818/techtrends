
# use the Python:3.8 base image
FROM python:3.8-buster

# set the working directory 
WORKDIR /

COPY ./requirements.txt ./

# import dependencies using `` and build the application using `` command
# local env need use proxy --proxy=http://185.46.212.97:10015
RUN PYTHONPATH=/usr/bin/python pip install -r requirements.txt 

# copy all the files from the current directory to the container working directory
ADD . .

RUN python init_db.py

# expose the port 3111
EXPOSE 3111

CMD [ "python", "app.py" ]