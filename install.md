# Installation 

```
# packages
sudo apt update
sudo apt install -y tmux zsh stow yum

# configuration
git clone https://github.com/whikwon/dotfiles ~/.dotfiles
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install && source ~/.zshrc

# vimrc
cd ~/.dotfiles && stow zsh && source ~/.zshrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && vim +PluginInstall +qall

sudo apt install -y vim-gnome
sudo apt install -y xclip

# nvidia-driver
sudo apt install -y nvidia-driver-430

# docker
sudo apt-get update
sudo apt-get install -y \
	apt-transport-https \
	ca-certificates \
	curl \
	software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - 
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
	"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
	$(lsb_release -cs) \
	stable"

sudo apt-get update
sudo apt-get install -y docker-ce
sudo adduser $USER docker
sudo gpasswd -a $USER docker

# nvidia-docker
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get update && sudo apt-get install -y nvidia-container-toolkit

sudo apt-get install nvidia-docker2
sudo apt-get --only-upgrade install docker-ce nvidia-docker2
sudo systemctl restart docker

docker run --gpus all nvidia/cuda:9.0-base nvidia-smi
docker run --runtime nvidia nvidia/cuda:9.0-base nvidia-smi
nvidia-docker run nvidia/cuda:9.0-base nvidia-smi

# jenkins
docker run \
	-u root \
	-d \
	-p 8080:8080 \
	-p 50000:50000 \
	-v jenkins-data:/var/jenkins_home \
	-v /var/run/docker.sock:/var/run/docker.sock \
	jenkinsci/blueocean

# anaconda
wget https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh
```
