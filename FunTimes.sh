NUM=$((1 + $RANDOM % 10))

if [ $NUM -eq 1 ]; then
    notify-send -i face-sick "Mr Stark I don't feel so good."
elif [ $NUM -eq 2 ]; then
    notify-send -i face-glasses "Um ... Teacher, you forgot we had homework last night."
elif [ $NUM -eq 3 ]; then
    notify-send -i face-smile-big "Labradors are objectively the best dogs."
elif [ $NUM -eq 4 ]; then
    notify-send -i face-worried "If you drop soap is the floor clean or is the soap dirty?"
elif [ $NUM -eq 5 ]; then
    notify-send -i face-plain "Oh good, you're finally awake."
elif [ $NUM -eq 6 ]; then
    notify-send -i face-laugh "Personally, I don't like Empire Strikes Back."
elif [ $NUM -eq 7 ]; then
    notify-send -i face-angry "They speak Enlgish in What?! English DO YOU SPEAK IT."
elif [ $NUM -eq 8 ]; then
    notify-send -i face-angel "My least favorite Christmas movie is It's a Wonderful Life."
elif [ $NUM -eq 9 ]; then
    notify-send -i face-NA "I couldn't think of anything funny."
elif [ $NUM -eq 10 ]; then
    notify-send -i face-yawn "It's like 2:00am right now."
fi