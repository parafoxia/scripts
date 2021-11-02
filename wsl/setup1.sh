# Make sure Debian 9 is up-to-date.
sudo apt-get update && sudo apt-get upgrade -y && sudo DEBIAN_FRONTEND=noninteractive apt-get full-upgrade -y

# Update to  Deebian 10.
sudo sed -i 's/stretch/buster/g' /etc/apt/sources.list
sudo apt-get update && sudo apt-get upgrade -y && sudo DEBIAN_FRONTEND=noninteractive apt-get full-upgrade -y

# Update to Debian 11.
sudo sed -i 's/buster/bullseye/g' /etc/apt/sources.list
sudo sed -i 's/bullseye\/updates/bullseye-security/g' /etc/apt/sources.list
sudo apt-get update && sudo apt-get upgrade -y --without-new-pkgs && DEBIAN_FRONTEND=noninteractive sudo apt-get full-upgrade -y

# Cleanup.
sudo DEBIAN_FRONTEND=noninteractive apt-get autoremove

echo "Setup part 1 done! Refer back to the README to complete the setup."
