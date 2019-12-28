# Dotfiles
Configuration files collection

## Usage
Pull the repository, and then create the symbolic links using GNU stow.
```
sudo apt install stow
git clone https://github.com/whikwon/dotfiles ~/.dotfiles
cd ~/.dotfiles
stow tmux vim
```

## Tmux
Copy from tmux buffer to system buffer (clipboard)
```
sudo apt install --assume-yes xclip
```
