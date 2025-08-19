echo "------------------------------------------"
echo "Rebooted!!!!"
echo "------------------------------------------"
echo "Running MySQL Setup"
echo "------------------------------------------"
cd /mnt/mysql-scripts
sudo chmod +x mysql-secure-installation.sh
sudo ./mysql-secure-installation.sh
echo "------------------------------------------"
echo "Ran MySQL Secure Installation Successfully!"
echo "------------------------------------------"
sudo chmod +x mysql-create-lempDB.sh
sudo ./mysql-create-lempDB.sh
echo "------------------------------------------"
echo "Created MySQL User Don and lempDB Successfully!"
echo "------------------------------------------"
echo "MySQL Setup Ran Successfully!"
echo "Your newly created Virtual Machine will now shutdown and export!"
echo "------------------------------------------"