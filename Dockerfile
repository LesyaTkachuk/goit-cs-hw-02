# command FROM apoints basic container image (Linux with python-3.10 installed)
FROM python:3.11-slim

# set environment variable
ENV APP_HOME /app

# set the working directory inside the container
WORKDIR $APP_HOME

# copy files into working directory
COPY . .

# install dependencies inside the container
RUN pip install -r requirements.txt

# set port on which app is running
EXPOSE 3000

# run our app inside the container
ENTRYPOINT ["python", "main.py"]
