echo "Configuring packages..."
sudo apt-get update -qq
sudo apt-get upgrade -qq
sudo apt-get install -qq wget apt-transport

echo "Installing Sublime Text..."
cd /tmp
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update -qq
sudo apt-get install -qq sublime-text