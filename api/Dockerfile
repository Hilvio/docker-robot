# Dockerfile

# Base image
FROM python:3.6

# Copy test project files to the image folder
COPY requirements.txt api-tests/

# Make the folder as a working directory
WORKDIR /api-tests

# Install the test project libraries
RUN pip install -r requirements.txt
