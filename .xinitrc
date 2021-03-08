feh ~/.wallpapers/wallhaven-z8mrro_2560x1440.png --bg-fill
DISPLAY=":0" picom -b --config ~/.config/picom/picom.conf --focus-exclude "x = 0 && y = 0 && override_redirect = true"

while true; do
	xsetroot -name "$(date '+%Y %b %d (%a) %H:%M%p')"
	sleep 60
done &

exec dwm
