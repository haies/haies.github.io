sudo apt-get update &&
sudo apt-get upgrade -y &&

sudo apt-get install -y vim git zsh zip p7zip tmux curl tree man&&
echo "Installed basic tools" ;

echo y | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&
echo "Installed oh-my-zsh" &&

sed -i '0,/plugins=(git)/s/plugins=(git)/plugins=(git z tmux)/' .zshrc&&

#:解决nice(5) failed: operation not permitted
sudo sed -i '$a   \unsetopt BG_NICE' .zshrc &&
sudo source .zshrc &&
echo "Updated oh-my-zsh plugins";