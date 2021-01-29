cd
sudo bash -c "cat > /etc/apt/sources.list"<<EOF
deb http://mirrors.163.com/ubuntu/ `lsb_release -cs` main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ `lsb_release -cs`-security main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ `lsb_release -cs`-updates main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ `lsb_release -cs`-proposed main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ `lsb_release -cs`-backports main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ `lsb_release -cs` main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ `lsb_release -cs`-security main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ `lsb_release -cs`-updates main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ `lsb_release -cs`-proposed main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ `lsb_release -cs`-backports main restricted universe multiverse
EOF
sh -c "$(curl -fsSL http://www.haies.cn/assets/apt-install.sh)"
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - &&
sudo apt-get install -y nodejs build-essential &&
echo "Installed Nodejs and NPM" &&

sudo npm i tldr -g && tldr -u &&
echo "Installed NPM tools";

echo "All Done!";
