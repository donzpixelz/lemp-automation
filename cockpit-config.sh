sudo systemctl enable --now cockpit.socket
echo "sudo systemctl enable --now cockpit.socket - done!"
sudo systemctl daemon-reload
echo "sudo systemctl daemon-reload - done!"
sudo systemctl restart cockpit.socket
echo "sudo systemctl restart cockpit.socket - done!"
sudo sleep 5;
echo "sudo sleep 5; - done!"