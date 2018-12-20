#bin/bash
#Install build essentials
sudo apt update -y && sudo apt upgrade -y
sudo apt install build-essential -y

sudo apt install curl -y

#Install nvm and node and npm
#curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
#export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
#source ~/.bashrc
#sudo nvm install node -y Needs to be done in another terminal session
#sudo nvm install-latest-npm -y Needs to be done in another terminal session

#Install better terminal
sudo apt install terminator -y

#Install GoogleChrome
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list
wget https://dl.google.com/linux/linux_signing_key.pub
sudo apt-key add linux_signing_key.pub
sudo apt update
sudo apt install google-chrome-stable

#Install IntelliJ Idea Ultimate
wget https://download.jetbrains.com/idea/ideaIU-2018.2.6.tar.gz
tar -xzf ideaIU-2018.2.6.tar.gz
rm ideaIU-2018.2.6.tar.gz 
mv idea-* idea
mv idea /opt/

#Install WebStorm 
wget https://download.jetbrains.com/webstorm/WebStorm-2018.2.2.tar.gz
tar -xzf WebStorm-2018.2.2.tar.gz 
rm WebStorm-2018.2.2.tar.gz
mv WebStorm-182.4129.32 webstorm
mv webstorm /opt/

#Install RubyMine
wget https://download.jetbrains.com/ruby/RubyMine-2018.2.2.tar.gz
tar -xzf RubyMine-2018.2.2.tar.gz 
rm RubyMine-2018.2.2.tar.gz
mv RubyMine-2018.2.2 rubymine
mv rubymine /opt/

#Install Pycharm
wget https://download.jetbrains.com/python/pycharm-professional-2018.2.2.tar.gz
tar -xzf pycharm-professional-2018.2.2.tar.gz 
rm pycharm-professional-2018.2.2.tar.gz
mv pycharm-2018.2.2 pycharm
mv pycharm /opt/

#Install Slack
sudo snap install slack --classic

#Install DBveaver
wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
sudo apt install ./dbeaver-ce_latest_amd64.deb  -y

#Install PostgreSQL
sudo apt-get install wget ca-certificates -y
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install postgresql-10 pgadmin4 -y   # on wheezy/jessie/trusty: pgadmin3

#Install Postman
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
sudo tar -xzf postman.tar.gz -C /opt
rm postman.tar.gz
sudo ln -s /opt/Postman/Postman /usr/bin/postman

#Install FileZilla
sudo apt install filezilla -y

#Install TeamViewer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt install ./teamviewer_amd64.deb -y 
rm teamviewer_amd64.deb

#Install Skype
wget https://go.skype.com/skypeforlinux-64.deb
sudo apt install ./skypeforlinux-64.deb -y
rm skypeforlinux-64.deb

#Install Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

#Install TimeCamp
wget https://www.timecamp.com/downloadsoft/1.4.3.3/TimeCampSetup_LinAmd64-1.4.3.3.tar.gz
tar -xzf TimeCampSetup_LinAmd64-1.4.3.3.tar.gz 
rm TimeCampSetup_LinAmd64-1.4.3.3.tar.gz 
sh install.sh -y

#Install Grub Customizer
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
sudo apt-get update
sudo apt-get install grub-customizer -y

#Install additional configuration
sudo apt install compizconfig-settings-manager -y

#Install java 8
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer -y

#Install Hyperledger Composer, Fabric and all the tools
curl -O https://hyperledger.github.io/composer/latest/prereqs-ubuntu.sh
sudo chmod u+x prereqs-ubuntu.sh
sudo ./prereqs-ubuntu.sh -y

sudo npm install -g composer-cli@0.20
sudo npm install -g composer-rest-server@0.20
sudo npm install -g generator-hyperledger-composer@0.20
sudo npm install -g yo

#Remove all docker containers and images
#docker kill $(docker ps -q)
#docker rm $(docker ps -aq)
#docker rmi $(docker images dev-* -q)
