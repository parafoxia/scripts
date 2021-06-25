# Running the WSL setup

```sh
sudo apt update && sudo apt install -y curl
curl -fsSL https://raw.githubusercontent.com/parafoxia/scripts/main/wsl/setup.sh | bash -s -- 3.9.5
sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/MrDogeBro/quicknav/HEAD/scripts/deb-install.sh)"
chsh -s $(which zsh)
# Reset shell
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
source $HOME/.config/zsh/.zshrc
```
