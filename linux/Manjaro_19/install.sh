# Create Dirs
mkdir ~/Tools ~/Code

# Setup zsh
chsh -s $(which zsh)
sudo chsh -s $(which zsh)

# Update all packages first
sudo pacman -Syu --noconfirm

# Setup base packages
sudo pacman -Syu --noconfirm zip unzip gzip htop net-tools tigervnc

# Setup Git Credentials
git config --global user.name "sslavov93"
git config --global user.email "sslavov93@gmail.com"

ssh-keygen -t rsa -b 4096 -C "sslavov93@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub

# Setup Autojump
cd ~/Tools
git clone git://github.com/wting/autojump.git
cd autojump
./install.py
cd ~

# Setup yay (AUR installer)
cd ~/Tools
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -is --noconfirm
cd ~

# Setup Google Chrome
sudo yay -Syu --noconfirm google-chrome

# Setup Spotify
sudo yay -Syu --noconfirm spotify

# Setup Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Make sure to execute the next command (beware of context) inside the default agnoster zsh view
# sudo cp /home/$USER/configs/linux/Manjaro_19/zshrc /home/$USER/.zshrc
# Now exit and wait for reboot then execute the line below
# sudo cp /home/$USER/configs/linux/Manjaro_19/agnoster /home/$USER/configs/linux/Manjaro_19/.oh-my-zsh/themes/agnoster.zsh-theme

echo "Done."
sudo reboot
