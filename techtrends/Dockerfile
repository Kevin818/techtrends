
# use the Python:3.8 base image
FROM python:3.8-buster

# set the working directory to /
WORKDIR /

# copy all the files from the current directory to the container working directory
ADD . .

# import dependencies using `` and build the application using `` command
RUN  pip install -r requirements.txt 

RUN python init_db.py

# expose the port 3111
EXPOSE 3111

CMD [ "python", "app.py" ]