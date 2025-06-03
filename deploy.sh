#!/bin/bash
echo "Unmount EFS volume..."
sudo umount /var/www/api/files
echo "Removing old code..."
sudo rm -rf /var/www/api
sudo mkdir -p /var/www/api
sudo mkdir -p /var/www/api/logs
echo "Coping api..."
sudo cp -r ./api/* /var/www/api/
sudo chmod -R 755 /var/www/
sudo chmod -R 777 /var/www/api/errors
sudo chmod -R 777 /var/www/api/logs
echo "API copied successfully."
echo "Mounting EFS volume..."
sudo mount -t efs -o tls $1:/ /var/www/api/files/
echo "EFS volume mounted."
echo "Checking if API is running..."
until [[ "$(curl -s "$2/api.php?w=ejemplo&r=hola")" == '{"resp":"hola :)"}' ]]; do
  echo "Waiting for API to respond with expected output..."
  sleep 2
done
echo "API is running and responding as expected."