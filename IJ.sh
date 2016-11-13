IJ_VERSION="ideaIC-2016.2.5"
IJ_ARCHIVE="$IJ_VERSION.tar.gz"

wget https://download.jetbrains.com/idea/$IJ_ARCHIVE

tar -zxvf $IJ_ARCHIVE
rm *.tar.gz
mv ideaIC* ~/Work/Tools
./~/Work/Tools/IJ_VERSION/bin/idea.sh

