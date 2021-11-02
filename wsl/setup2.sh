if [ ! -d "$HOME/.local/share/nano" ] ; then
    mkdir -p $HOME/.local/share/nano
fi

sudo apt-get install -y git neofetch texlive zsh wget man build-essential zlib1g-dev \
    libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev \
    libbz2-dev pkg-config liblzma-dev

sudo apt-get autoremove -y
sudo apt-get clean

git clone --bare https://github.com/parafoxia/dotfiles $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout

echo "Setup part 2 done! Refer back to the README to complete the setup."
