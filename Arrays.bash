export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus export DISPLAY=:0;

jokes=("Nothing" "Mr Stark I don't feel so good." "If you drop soap is the floor clean or is the soap dirty?" "Oh good, you're finally awake." "Personally, I don't like Empire Strikes Back." "They speak Enlgish in What?! English DO YOU SPEAK IT." "My least favorite Christmas movie is It's a Wonderful Life." "I couldn't think of anything funny." "Im witerwawwy a hakew" "The fitnessgram pacer test is a multistag aeorbic capacity test that progressively gets more difficult as it continues...")

faces=("NA" "face-angel" "face-worried" "face-plain" "face-smile-big" "face-angry" "face-laugh" "face-glasses" "face-big-smile" "face-sick")

JOKENUM=$((1 + $RANDOM % 9))

FACENUM=$((1 + $RANDOM % 9))

echo \-${faces[$FACENUM]} \"${jokes[$JOKENUM]}\"
