if [ $# -ne 1 ] ; then
    echo "Exactly one argument must be supplied."
    exit 1
fi

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
python${$1:0:3} -m venv .venv
source .venv/bin/activate
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | python -
deactivate
rm -rf .venv

echo "Setup part 3 done! You should be good to go now."
