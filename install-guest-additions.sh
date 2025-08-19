echo "------------------------------"
echo "Installing VBoxGuestAdditions!"
echo "------------------------------"
sudo mount /home/don/VBoxGuestAdditions_6.1.12.iso /mnt
cd /mnt
sudo ./VBoxLinuxAdditions.run
sudo sed -i 's/vboxsf:x:985:/vboxsf:x:985:don,nginx/g' /etc/group
sudo usermod -aG vboxusers don
sudo sed -i '$a conf.d    /etc/nginx/conf.d    vboxsf    uid=1000,gid=1000  0     0' /etc/fstab
sudo sed -i '$a somesite.com    /mnt/somesite.com    vboxsf    uid=1000,gid=1000  0     0' /etc/fstab
sudo sed -i '$a lemp.com    /mnt/lemp.com    vboxsf    uid=1000,gid=1000  0     0' /etc/fstab
sudo sed -i '$a nginx-logs    /mnt/nginx-logs    vboxsf    uid=1000,gid=1000  0     0' /etc/fstab
sudo sed -i '$a default.d    /etc/nginx/default.d    vboxsf    uid=1000,gid=1000  0     0' /etc/fstab
sudo sed -i '$a php-fpm.d    /etc/php-fpm.d    vboxsf    uid=1000,gid=1000  0     0' /etc/fstab
sudo sed -i '$a mysql-scripts    /mnt/mysql-scripts    vboxsf    uid=1000,gid=1000  0     0' /etc/fstab
echo "------------------------------------------"
echo "VBoxGuestAdditions Installed Successfully!"
echo "------------------------------------------"
echo "rebooting now"
echo "------------------------------------------"
sudo reboot now