# Running the WSL setup

NOTE: This will probably only work on the Debian distro.

```sh
# Part 1
sudo apt update && sudo apt install -y curl
sudo su -
curl -fsSL https://raw.githubusercontent.com/parafoxia/scripts/main/wsl/setup1.sh | bash
sudo su <username>

# Part 2
curl -fsSL https://raw.githubusercontent.com/parafoxia/scripts/main/wsl/setup2.sh | bash -s -- <python version>
chsh -s $(which zsh)

# Restart shell (ignore any errors on login)
# Part 3
curl -fsSL https://raw.githubusercontent.com/parafoxia/scripts/main/wsl/setup3.sh | bash
```
