# Running the WSL setup

## Initial setup

```sh
sudo apt update && sudo apt install -y curl zsh
chsh -s $(which zsh)
```

## Debian setup

*NOTE: This is only for Debian 9.*

```sh
sudo su -
curl -fsSL https://raw.githubusercontent.com/parafoxia/scripts/main/wsl/debian-setup.sh | bash
sudo su <username>
```

## User setup

*NOTE: You will need to check your Git config.*

```
curl -fsSL https://raw.githubusercontent.com/parafoxia/scripts/main/wsl/user-setup.sh | bash -s -- <python version>
```
