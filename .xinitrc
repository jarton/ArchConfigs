#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# load resouce file
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# set wallpaper
nitrogen --restore &

# start conky
conky -x 0 -y 0 -d

# display date in demnu
while true 
do
    xsetroot -name  "$(date +"%a %b %d %r")"
    sleep 1s
done &

# start dwm window manger
exec dwm
