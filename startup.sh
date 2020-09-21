# Night mode
redshift -O 4200

# Display resolution scaling
if [ $(xrandr | grep " connected " | awk '{ print$1 }' | wc -l) = "1" ]
then
    dconf write /com/ubuntu/user-interface/scale-factor "{'eDP-1': 16}"
else
    dconf write /com/ubuntu/user-interface/scale-factor "{'eDP-1': 8}"
fi

# Swap Caps Lock with Esc
setxkbmap -option caps:swapescape

# Mic hiss elimination
# https://wiki.archlinux.org/index.php/Dell_XPS_13_(9360)#Continuous_hissing_sound_with_headphones
# amixer -c PCH cset 'name=Headphone Mic Boost Volume' 1

