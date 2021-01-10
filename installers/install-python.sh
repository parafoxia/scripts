sudo apt-get update
sudo apt-get upgrade -qq
sudo apt-get install -qq build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev pkg-config
cd /tmp
wget https://www.python.org/ftp/python/$1/Python-$1.tgz
tar -xf Python-$1.tgz
cd Python-$1
./configure --enable-optimizations --with-system-libssl --with-ensurepip=install --prefix=$HOME/.local
make -j $(nproc)
sudo make altinstall