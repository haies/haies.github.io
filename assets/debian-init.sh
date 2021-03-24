cd
sudo bash -c "cat > /etc/apt/sources.list"<<EOF
deb http://mirrors.163.com/debian/ `env -i bash -c '. /etc/os-release; echo $VERSION_CODENAME'` main non-free contrib
deb http://mirrors.163.com/debian/ `env -i bash -c '. /etc/os-release; echo $VERSION_CODENAME'`-updates main non-free contrib
deb http://mirrors.163.com/debian/ `env -i bash -c '. /etc/os-release; echo $VERSION_CODENAME'`-backports main non-free contrib
deb-src http://mirrors.163.com/debian/ `env -i bash -c '. /etc/os-release; echo $VERSION_CODENAME'` main non-free contrib
deb-src http://mirrors.163.com/debian/ `env -i bash -c '. /etc/os-release; echo $VERSION_CODENAME'`-updates main non-free contrib
deb-src http://mirrors.163.com/debian/ `env -i bash -c '. /etc/os-release; echo $VERSION_CODENAME'`-backports main non-free contrib
deb http://mirrors.163.com/debian-security/ `env -i bash -c '. /etc/os-release; echo $VERSION_CODENAME'`/updates main non-free contrib
deb-src http://mirrors.163.com/debian-security/ `env -i bash -c '. /etc/os-release; echo $VERSION_CODENAME'`/updates main non-free contrib
EOF
echo "Changed sources.list to mirrors.163.com";

sh -c "$(curl -fsSL http://www.haies.cn/assets/apt-install.sh)"
sed -i '0,/plugins=(git)/s/plugins=(git)/plugins=(git z tmux docker)/' .zshrc&&
source .zshrc
# curl -sL https://deb.nodesource.com/setup_12.x | bash -&&
# apt-get install -y nodejs&&
# echo "Installed Nodejs and NPM" &&

# sudo npm i tldr -g && tldr -u &&
# echo "Installed NPM tools";

echo "All Done!";