# base image
FROM python:3.8-slim

# set working directory in container
WORKDIR /app

# copy files to working directory
COPY . /app

# install flask app dependencies
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

# command to run when container starts
ENTRYPOINT ["python", "app/app.py"]