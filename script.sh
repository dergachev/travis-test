# test script

set -e   # fail the whole script if any line fails

echo "Started on TIME:" $(date)

sudo apt-get update
echo "TIME:" $(date)
sudo apt-get install apache2
echo "TIME:" $(date)
sudo apt-get install ffmpeg


## docker can't be installed due to this error: 
### invoke-rc.d: initscript lxc-net, action "start" failed
## the following workaround is via https://github.com/zpatten/lxc/blob/master/spec/support/install-lxc.sh
cat <<EOF | sudo tee /usr/sbin/policy-rc.d
#!/bin/sh
exit 101
EOF
sudo chmod 755 /usr/sbin/policy-rc.d
sudo apt-get -qq install lxc

echo "Installing docker, TIME:" $(date)
sudo apt-get -y install python-software-properties
echo "TIME:" $(date)
sudo add-apt-repository ppa:dotcloud/lxc-docker -y
echo "TIME:" $(date)
sudo apt-get update
echo "TIME:" $(date)
sudo apt-get -y install lxc-docker



echo "Finished installing on TIME:" $(date)
