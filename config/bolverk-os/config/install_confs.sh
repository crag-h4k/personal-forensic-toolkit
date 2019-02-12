#! /usr/bin/sh
username="f3nr1r"
vim_src="./vim/*"
vim_dst="/etc/vim/."

zsh_src="./zsh/*"
zsh_dst="/etc/zsh/."

bg_img="borealis3.jpg"

# zsh install 
mv /root/.oh-my-zsh /etc/zsh/on-my-zsh
rsync -a $zsh_src $zsh_dst
cp ./zsh/bolverk.zsh-theme /etc/zsh/oh-my-zsh/bolverk.zsh-theme 
if [ ! -f /etc/zsh/oh-my-zsh/themes/bolverk.zsh-theme ]; then
  ln -f /etc/zsh/bolverk.zsh-theme /etc/zsh/oh-my-zsh/themes/bolverk.zsh-theme
fi

echo " " > /root/.zshrc
echo " " > /home/$SUDO_USER/.zshrc
sh -c $(which zsh)

# Vim Install 
rsync -a $vim_src $vim_dst

mkdir -p /root/vim/.view
mkdir -p /home/$username/.vim/view && chown -R $username:$username /home/$username/.vim

select-editor vim
mkdir /etc/backgrounds
cp ./*.jpg /etc/backgrounds/.
echo "background=/usr/etc/backgrounds/$bg_img\nuser-background=/usr/etc/backgrounds/$bg_img" >> /etc/lightdm/lightdm-gtk-greeter.conf
cp urxvt/.X* /root/.
cp urxvt/.X* /home/$username/..
