sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get full-upgrade -y
sudo sed -i 's/stretch/buster/g' /etc/apt-get/sources.list
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get full-upgrade -y
sudo sed -i 's/buster/bullseye/g' /etc/apt-get/sources.list
sudo sed -i 's/bullseye\/updates/bullseye-security/g' /etc/apt-get/sources.list
sudo apt-get update && sudo apt-get upgrade -y --without-new-pkgs && sudo apt-get full-upgrade -y
sudo apt-get autoremove

echo "Setup part 1 done! Refer back to the README to complete the setup."
