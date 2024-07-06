# Nosana Install 02/07/2024

# **************************** STEP 1a ****************************
lsb_release -a
#Ubuntu version 20.04 or higher
##sudo apt update
##sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update

sudo apt-get install -y nvidia-container-toolkit

apt-cache policy docker-ce
sudo apt install -y docker-ce
#
# ***************PRESS CTRL-C AFTER THIS LINE***************
sudo systemctl status docker
#
# THEN PRESS CTRL-C
#
# Executing the Docker Command Without Sudo
sudo usermod -aG docker $USER
