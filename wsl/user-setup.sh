# Patch nano in case this file doesn't exist for some reason.
if [ ! -d "$HOME/.local/share/nano" ] ; then
    mkdir -p $HOME/.local/share/nano
fi

# Install packages from apt.
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y git man neofetch sqlite3 wget
sudo apt-get autoremove -y
sudo apt-get clean

# Clone config down.
git clone --bare https://github.com/parafoxia/dotfiles $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout

# Download and install other utils
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

echo "User setup complete!"
