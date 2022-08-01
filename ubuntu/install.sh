#####
##
## Script to setup a new linux machine
##
#####


# Install apt repositories
sudo apt update -y


# Install basic python packages
sudo apt install -y python3-pycallgraph python3-setuptools python3-venv python3-pip

# Install the terminal of my choice - terminator -> honestly bro get a better terminal
sudo apt install -y terminator

# Install the editor of my choice
sudo apt install -y vim
sudo snap install code --classic

# Install kde plasma
echo "Check if latte dock is still being maintained"
sudo apt install -y kde-plasma-desktop kde-spectacle latte-dock kalarm plasma-nm

# Install basic C and C++ dependencies
sudo apt install build-essential cmake-extras extra-cmake-modules

# Install docker
# Remove the old docker - ik its a new machine but, just in case you never know!
sudo apt-get remove docker docker-engine docker.io containerd runc
# Install docker
sudo apt-get install ca-certificates curl gnupg lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
	$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get -y update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
# This part of the code is just to be able to run docker without sudo privileges
sudo usermod -aG docker ${USER}
su - ${USER}

# Install google chrome
sudo apt install -y google-chrome-stable

# Install other casual packages
sudo apt install -y jq libreoffice libreoffice-plasma subversion okular
sudo apt-get install -y net-tools
sudo snap install htop spotify vlc


# Optional packages
# Kafka
# sudo apt install librdkafka-dev kafkacat

# MongoDB Compass
# sudo apt install mongodb-compass

# Ant build tool for java
# Using snap as it has the most latest version
# sudo snap install ant --classic

# Other packages I want to install
# 1. graphviz
# 2. kcachegrind - I think this is the UI for valgrind
# 3. scrcpy - connect my phone and my pc
# 4. radare2
# 5. fzf
# 6. teams
# 7. pylint
# 8. vault
# 9. sudo apt-get install libboost-all-dev -> boost package for ubuntu 


# Just some extra tools I had previously installed
# sudo apt install linux-tools-5.13.0-52-generic linux-tools-generic
