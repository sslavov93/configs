IJ_VERSION="ideaIC-2016.3.1"
IJ_ARCHIVE="$IJ_VERSION.tar.gz"

wget https://download.jetbrains.com/idea/$IJ_ARCHIVE

mv $IJ_ARCHIVE ~/Tools/
tar -zxvf ~/Tools/$IJ_ARCHIVE -C ~/Tools/
rm ~/Tools/*.tar.gz
