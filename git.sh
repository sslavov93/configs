git config --global user.name "sslavov93"
git.config --global user.email "sslavov93@gmail.com"

ssh-keygen -t rsa -b 4096 -C "sslavov93@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
