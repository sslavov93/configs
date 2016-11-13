sudo apt-get -y update && sudo apt-get -y upgrade && sudo apt-get -y update

./dirs.sh
sudo mv ~/.bashrc .bashrc_bak
sudo cp bashrc ~/.bashrc

./simple.sh
./spotify.sh
./git.sh
./sublime.sh
./IJ.sh

