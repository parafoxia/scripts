if [ $# -ne 1 ] ; then
    echo "Exactly one argument must be supplied."
    exit 1
fi

if [ ! -d "$HOME/.local/share/nano" ] ; then
    mkdir -p $HOME/.local/share/nano
fi

sudo apt-get install -y git neofetch texlive zsh wget build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev libbz2-dev pkg-config liblzma-dev

git clone --bare https://github.com/parafoxia/dotfiles $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout

cd /tmp
wget https://www.python.org/ftp/python/$1/Python-$1.tgz
tar -xf Python-$1.tgz
cd Python-$1
./configure -q --enable-optimizations --with-ensurepip=install
make -s -j $(nproc)
sudo make -s altinstall

sudo apt-get autoremove -y
sudo apt-get clean

echo "Setup part 2 done! Refer back to the README to complete the setup."
