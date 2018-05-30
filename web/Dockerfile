# Dockerfile

# Base image
FROM python:3.6

# Copy test project files to the image folder
COPY . /web-tests

# Make the folder as a working directory
WORKDIR /web-tests

# Install the test project libraries
RUN pip install -r requirements.txt
