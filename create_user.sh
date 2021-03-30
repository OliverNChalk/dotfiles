pacman -Sy sudo
useradd --create-home oliver
passwd oliver
usermod --append --groups wheel oliver
export EDITOR=VIM
visudo
