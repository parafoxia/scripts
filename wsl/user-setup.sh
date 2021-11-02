# Check args.
if [ $# -ne 1 ] ; then
    echo "Exactly one argument must be supplied."
    exit 1
fi

# Patch nano in case this file doesn't exist for some reason.
if [ ! -d "$HOME/.local/share/nano" ] ; then
    mkdir -p $HOME/.local/share/nano
fi

# Install packages from apt.
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y git neofetch texlive wget man build-essential \
    zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev \
    libreadline-dev libffi-dev libsqlite3-dev libbz2-dev pkg-config \
    liblzma-dev
sudo apt-get autoremove -y
sudo apt-get clean

# Clone config down.
git clone --bare https://github.com/parafoxia/dotfiles $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout

# Download and install Python
cd /tmp
wget https://www.python.org/ftp/python/$1/Python-$1.tgz
tar -xf Python-$1.tgz
cd Python-$1
./configure -q --enable-optimizations --with-ensurepip=install
make -s -j $(nproc)
sudo make -s altinstall

# Download and install other utils
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/MrDogeBro/quicknav/HEAD/scripts/deb-install.sh)"

# Download and install Poetry
cd /tmp
python"$(cut -d'.' -f1-2 <<< '$1')" -m venv .venv
source .venv/bin/activate
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | python -
deactivate
rm -rf .venv

echo "User setup complete!"
