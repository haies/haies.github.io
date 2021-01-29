cd
sudo bash -c "cat > /etc/apt/sources.list"<<EOF
deb http://mirrors.163.com/debian/ `lsb_release -sc` main non-free contrib
deb http://mirrors.163.com/debian/ `lsb_release -sc`-updates main non-free contrib
deb http://mirrors.163.com/debian/ `lsb_release -sc`-backports main non-free contrib
deb-src http://mirrors.163.com/debian/ `lsb_release -sc` main non-free contrib
deb-src http://mirrors.163.com/debian/ `lsb_release -sc`-updates main non-free contrib
deb-src http://mirrors.163.com/debian/ `lsb_release -sc`-backports main non-free contrib
deb http://mirrors.163.com/debian-security/ `lsb_release -sc`/updates main non-free contrib
deb-src http://mirrors.163.com/debian-security/ `lsb_release -sc`/updates main non-free contrib
EOF
echo "Changed sources.list to mirrors.163.com";

sh -c "$(curl -fsSL http://www.haies.cn/assets/apt-install.sh)"

# curl -sL https://deb.nodesource.com/setup_12.x | bash -&&
# apt-get install -y nodejs&&
# echo "Installed Nodejs and NPM" &&

# sudo npm i tldr -g && tldr -u &&
# echo "Installed NPM tools";

echo "All Done!";