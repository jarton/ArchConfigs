#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

nitrogen --restore &

#conky -x 0 -y 0 -d &

while true 
do
    xsetroot -name  "$(date +"%F %R")"
    sleep 1m
done &

#exec dwm
sxhkd &
urxvt &
exec bspwm

