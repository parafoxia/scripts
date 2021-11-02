# Running the WSL setup

NOTE: Setup script 1 should ONLY be run on Debian 9.
NOTE: You will need to check your global Git config after running setup script 2.

```sh
# Part 1 - Update to Debian 11
sudo apt update && sudo apt install -y curl
sudo su -
curl -fsSL https://raw.githubusercontent.com/parafoxia/scripts/main/wsl/setup1.sh | bash
sudo su <username>

# Part 2 - Install packages and download dotfiles
curl -fsSL https://raw.githubusercontent.com/parafoxia/scripts/main/wsl/setup2.sh | bash
chsh -s $(which zsh)

# Restart shell (ignore any errors on login)
# Part 3 - Install utilities
curl -fsSL https://raw.githubusercontent.com/parafoxia/scripts/main/wsl/setup3.sh | bash -s -- <python version>
```
