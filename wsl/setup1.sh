sudo DEBIAN_FRONTEND=noninteractive apt-get update && sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y && sudo DEBIAN_FRONTEND=noninteractive apt-get full-upgrade -y
sudo sed -i 's/stretch/buster/g' /etc/apt/sources.list
sudo DEBIAN_FRONTEND=noninteractive apt-get update && sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y && sudo DEBIAN_FRONTEND=noninteractive apt-get full-upgrade -y
sudo sed -i 's/buster/bullseye/g' /etc/apt/sources.list
sudo sed -i 's/bullseye\/updates/bullseye-security/g' /etc/apt/sources.list
sudo DEBIAN_FRONTEND=noninteractive apt-get update && sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y --without-new-pkgs && DEBIAN_FRONTEND=noninteractive sudo apt-get full-upgrade -y
sudo DEBIAN_FRONTEND=noninteractive apt-get autoremove

echo "Setup part 1 done! Refer back to the README to complete the setup."
