[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
xset -b
xbindkeys
exec i3
