if [ $# -eq 0 ] ; then
    echo "ERROR: A Python version must be specified."
    exit 1
fi

if [ ! -d "$HOME/.local/share/nano" ] ; then
    mkdir -p $HOME/.local/share/nano
fi

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y git neofetch texlive zsh build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev pkg-config liblzma-dev libpython3-dev python3-venv

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

echo "Setup done. Run the individual commands in the README to complete the setup."
