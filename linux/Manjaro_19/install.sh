# Update all packages first
sudo pacman -Syu --noconfirm

# Setup base packages
sudo pacman -Syu --noconfirm zip unzip gzip

# Setup Git Credentials
git config --global user.name "sslavov93"
git config --global user.email "sslavov93@gmail.com"
git config --global merge.tool meld
git config --global diff.guitool meld
git config --global mergetool.meld.path /usr/bin/meld

ssh-keygen -t rsa -b 4096 -C "sslavov93@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub

# Setup yay (AUR installer)
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -is --noconfirm
cd ~

# Setup Google Chrome
yay google-chrome

# Setup Spotify
yay spotify

# Setup Oh My Zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp agnoster ~/.oh-my-zsh/themes/agnoster.zsh-theme
cp zshrc ~/.zshrc

echo "Done."
