#!/bin/bash -xe

# Update package lists and install required packages
apt update -y
apt install nodejs unzip wget npm mysql-client -y

# Clone the repository
git clone [XXXbackendXXX] /home/ubuntu/backend

npm install

# Create the env directory and the development.env file with database credentials
mkdir -p env
cat <<EOT >> env/development.env
PORT=5000
DB_HOST='localhost'
DB_USER='root'
DB_PASSWORD=''
DB_NAME='myapp'
EOT

# Start the backend server
npm run dev &

# Ensure the backend starts on boot
echo '#!/bin/bash -xe
cd /home/ubuntu/angular-ecommerce-app/backend
npm run dev' > /etc/rc.local
chmod +x /etc/rc.local
