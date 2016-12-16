sudo apt-get -y update && sudo apt-get -y upgrade && sudo apt-get -y update

./dirs.sh
sudo mv ~/.bashrc .bashrc_bak
sudo cp bashrc ~/.bashrc

./java.sh
./simple.sh
./spotify.sh
./sublime.sh
./IJ.sh
./git.sh
