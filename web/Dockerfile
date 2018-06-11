# Dockerfile

# Base image
FROM python:3.6

# Copy test project files to the image folder
COPY . /robot

# Make the folder as a working directory
WORKDIR /robot

# Install the test project libraries
RUN pip install -r requirements.txt

#========================================
# Add normal user with passwordless sudo
#========================================
RUN useradd robot \
         --shell /bin/bash  \
         --create-home \
  && usermod -a -G sudo robot \
  && echo 'ALL ALL = (ALL) NOPASSWD: ALL' >> /etc/sudoers \
  && echo 'robot:secret' | chpasswd

#===================================================
# Run the following commands as non-privileged user
#===================================================
USER robot