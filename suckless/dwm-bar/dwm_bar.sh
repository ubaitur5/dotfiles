LOC=$(readlink -f "$0")
DIR=$(dirname "$LOC")

# Change the appearance of the module identifier. if this is set to "unicode", then symbols will be used as identifiers instead of text. E.g. [📪 0] instead of [MAIL 0].
# Requires a font with adequate unicode character support
#export IDENTIFIER="unicode"

# Change the charachter(s) used to seperate modules. If two are used, they will be placed at the start and end.
export SEP1="["
export SEP2="]"

. "$DIR/bar-functions/dwm_battery.sh"
. "$DIR/bar-functions/dwm_date.sh"


# Update dwm status bar every second
while true
do
    # Append results of each func one by one to the upperbar string
    upperbar=""
    upperbar="$upperbar$(dwm_battery)"
    upperbar="$upperbar$(dwm_date)"
   
    # Append results of each func one by one to the lowerbar string
    lowerbar=""

    
    xsetroot -name "$upperbar"
    
    # Uncomment the line below to enable the lowerbar 
#    xsetroot -name "$upperbar;$lowerbar"
    sleep 30
done
