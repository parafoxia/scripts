# Make sure Debian 9 is up-to-date.
sudo DEBIAN_FRONTEND=noninteractive apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
sudo DEBIAN_FRONTEND=noninteractive apt-get full-upgrade -y

# Update to  Deebian 10.
sudo sed -i 's/stretch/buster/g' /etc/apt/sources.list
sudo DEBIAN_FRONTEND=noninteractive apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
sudo DEBIAN_FRONTEND=noninteractive apt-get full-upgrade -y

# Update to Debian 11.
sudo sed -i 's/buster/bullseye/g' /etc/apt/sources.list
sudo sed -i 's/bullseye\/updates/bullseye-security/g' /etc/apt/sources.list
sudo DEBIAN_FRONTEND=noninteractive apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y --without-new-pkgs
sudo DEBIAN_FRONTEND=noninteractive apt-get full-upgrade -y

# Cleanup.
sudo apt-get autoremove -y
sudo apt-get clean

echo "Debian setup complete! For the user setup, refer back to the README."
