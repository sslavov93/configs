IJ_VERSION="ideaIC-2016.2.5"
IJ_ARCHIVE="$IJ_VERSION.tar.gz"

wget https://download.jetbrains.com/idea/$IJ_ARCHIVE

mv $IJ_ARCHIVE ~/Work/Tools
tar -zxvf ~/Work/Tools/$IJ_ARCHIVE
rm ~/Work/Tools/*.tar.gz
./~/Work/Tools/IJ_VERSION/bin/idea.sh
