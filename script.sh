# test script

echo "Started on TIME:" $(date)

sudo apt-get update
echo "TIME:" $(date)
sudo apt-get install apache2
echo "TIME:" $(date)
sudo apt-get install ffmpeg
echo "Finished installing on TIME:" $(date)
