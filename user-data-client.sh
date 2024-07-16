#!/bin/bash -xe

# Update package lists and install required packages
apt update -y
apt install nodejs unzip wget npm -y

# Install Angular CLI globally
npm install -g @angular/cli

# Clone the repository
git clone [XXXclientXXX] /home/ubuntu/client
npm install

# Start the Angular development server
ng serve --host 0.0.0.0 --port 4200 &
