wn=`cat ~/.fvwm/tmp/.winidlist.temp | wc -l`
if [ $wn -gt 2 ]
then
	echo "Exec exec ~/.fvwm/scripts/tilefvwmtopright.sh";
elif [ $wn -eq 2 ]
then
	echo "Exec exec ~/.fvwm/scripts/center2vf.sh";
elif [ $wn -eq 1 ]
then
	FvwmCommand "All (CurrentPage, "'!'"Iconic, Iconifiable, "'!'"shaded) Silent FullScreen";
	rm  ~/.fvwm/tmp/.winidlist.temp  -f
fi
