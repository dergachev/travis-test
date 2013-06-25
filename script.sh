# test script

echo "Started on TIME:" $(date)

sudo apt-get update
echo "TIME:" $(date)
sudo apt-get install apache2
echo "TIME:" $(date)
sudo apt-get install ffmpeg

echo "Installing docker, TIME:" $(date)
apt-get -y install python-software-properties
add-apt-repository ppa:dotcloud/lxc-docker -y
apt-get update
apt-get -y install lxc-docker


echo "Finished installing on TIME:" $(date)
