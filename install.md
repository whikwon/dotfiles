sudo apt update
sudo apt install zsh && stow

git clone https://github.com/whikwon/dotfiles ~/.dotfiles
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install && source ~/.zshrc

cd ~/.dotfiles && stow zsh && source ~/.zshrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && vim +PluginInstall +qall
