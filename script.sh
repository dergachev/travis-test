# test script

echo "Started on TIME:" $(date)

sudo apt-get update
echo "TIME:" $(date)
sudo apt-get install apache2
echo "TIME:" $(date)
sudo apt-get install ffmpeg

echo "Installing docker, TIME:" $(date)
sudo apt-get -y install python-software-properties
echo "TIME:" $(date)
sudo add-apt-repository ppa:dotcloud/lxc-docker -y
echo "TIME:" $(date)
sudo apt-get update
echo "TIME:" $(date)
sudo apt-get -y install lxc-docker


echo "Finished installing on TIME:" $(date)
