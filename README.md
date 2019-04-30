# mouseButtonBindings
Mouse button bindings for Logitech M510

## Prerequisites

1. have the folowing software installed

* xbindkeys
* xautomation
* xdotool

2. clone *xbindkeysrc.template* and *mouseKeys.sh* into your user's home directory
3. rename *xbindkeysrc.template* to *.xbindkeys*: `mv xbindkeysrc.template .xbindkeysrc`
4. make *mouseKeys.sh* executable: `sudo chmod +x mouseKeys.sh`

## Notes

* make sure to run `killall xbindkeys && xbindkeys` after each change to .xbindkeysrc
* functionality has been tested on Kubuntu 19.04 with a Logitech M510 mouse
* find out proper naming for futher keys by running `xev`
