echo "Configuring packages..."
sudo apt-get update -qq
sudo apt-get upgrade -qq
sudo apt-get install -qq dpkg wget libgconf-2-4 libappindicator1 linc++1

echo "Installing Discord..."
cd /tmp
wget -qO discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i discord.deb