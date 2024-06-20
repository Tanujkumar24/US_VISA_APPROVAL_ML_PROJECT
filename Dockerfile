# Use the official Python image from the Docker Hub
FROM python:3.8.5-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install cmake and other necessary build tools
RUN apt-get update && apt-get install -y cmake build-essential

# Install the Python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy the rest of the application code into the container
COPY . /app

# Specify the command to run on container start
CMD ["python3", "app.py"]
