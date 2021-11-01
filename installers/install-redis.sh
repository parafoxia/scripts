echo "Downloading Redis..."
cd /tmp
wget -q http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz

echo "Building Redis..."
cd redis-stable
make -s -j $(nproc)

echo "Installing Redis..."
sudo make -s install

echo "All done!"
