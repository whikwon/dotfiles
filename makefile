configure:
	ln -sfn ./vscode/keybindings.json ~/.config/Code/User/keybindings.json
	ln -sfn ./vscode/settings.json ~/.config/Code/User/settings.json
	stow tmux vim zsh
