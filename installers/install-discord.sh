sudo apt-get update
sudo apt-get upgrade -qq
sudo apt-get install -qq dpkg wget
cd /tmp
wget https://discordapp.com/api/download?platform=linux&format=deb
sudo dpkg -i discord.deb