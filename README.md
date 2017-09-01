
## packages
xorg-server xorg-xinit xorg-setxkbmap xorg  sudo wpa_supplicant git vim bspwm sxhkd firefox 
urvxt cmake npm ttf-dejavu zsh

## macbook-air
boot:
to dual boot with osx mount apple boot partition on /mnt/boot before chroot,
continue installing and then inside chroot
bootctl --path=/boot install
to install systemd boot 

add entry to /boot/loaders/entires

title          Arch Linux
linux          /vmlinuz-linux
initrd         /initramfs-linux.img
options        root=PARTUUID=14420948-2cea-4de7-b042-40f67c618660 rw

to get partuuid ls -l /dev/disk/by-partuuid

wireless:
rmmod ssb
rmmod b43
git clone https://aur.archlinux.org/packages/broadcom-wl.git
makepkg -si
modprobe wl

copy xorg files to /etc/X11/xorg.conf.d/
install package xf86-input-mtrack

## zsh
run zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

overwrite with .zshrc from here
chsh -s /bin/zsh #for zsh default shell
launch new shell

## rxvt 
Colors, fonts, and other settings are located in .Xresources

## firefox
vimperator addon (3.16.0) and stylish firefox addon needed.
.vimperatorrc and vimperator folder are placed in ~/.
stylish.sqlite, use stylish addon in firefox, go to about:config and find 
extensions.stylish.dbfile and point it to this file to load styles.

## vim 
vundle used to manage plugins.

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vundle install inside vim.

 YouCompleteMe and tern needs to have aditional install steps.
run install.py and npm install inside ~/.vim/bundle/{YouCompleteMe/tern}

## panel

upower package for battery
awesome fonts for symbols
