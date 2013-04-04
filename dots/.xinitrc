
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

setxkbmap dvorak

xmodmap ~/.Xmodmaprc

xrdb -merge ~/.Xresources

exec xmonad
