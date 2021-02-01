sudo apt-get update &&
sudo apt-get upgrade -y &&

sudo apt-get install -y vim git zsh zip p7zip p7zip-plugins tmux curl tree man htop&&
echo "Installed basic tools" ;

echo y | sh -c "$(curl -fsSL https://haies.cn/assets/install-zsh.sh)" &&
echo "Installed oh-my-zsh" &&

sed -i '0,/plugins=(git)/s/plugins=(git)/plugins=(git z tmux)/' .zshrc&&

#:解决nice(5) failed: operation not permitted
sudo sed -i '$a   \unsetopt BG_NICE' .zshrc &&
sudo source .zshrc &&
echo "Updated oh-my-zsh plugins";