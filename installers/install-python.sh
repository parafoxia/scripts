echo "Configuring packages..."
sudo apt-get update -qq && sudo apt-get upgrade -qq
sudo apt-get install -qq build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev pkg-config liblzma-dev

echo "Downloading Python $1..."
cd /tmp
wget -q https://www.python.org/ftp/python/$1/Python-$1.tgz
tar -xf Python-$1.tgz

echo "Building Python $1..."
cd Python-$1
./configure -q --enable-optimizations --with-ensurepip=install
make -s -j $(nproc)

echo "Installing Python $1..."
sudo make -s altinstall

echo "All done!"
