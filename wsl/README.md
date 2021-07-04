# Running the WSL setup

```sh
sudo apt update && sudo apt install -y curl
curl -fsSL https://raw.githubusercontent.com/parafoxia/scripts/main/wsl/setup.sh | bash -s -- <python version>
sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/MrDogeBro/quicknav/HEAD/scripts/deb-install.sh)"
chsh -s $(which zsh)

# Restart shell (ignore any errors on login)
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
