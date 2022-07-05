
#
#Course: Programação Shell Script – Automatizando Rotinas no Linux
#http://www.udemy.com/programacao-shell-script
#Autor: Ricardo Prudenciato
#
#

# Create a script that based on the current time writes "Good Morning", "Good Afternoon" or "Good evening"
# Consider that the start of the day at 06:00 AM
#
# $1 was used for testing purposes only
#hour=$1
hour=$(date +%H)

if [ "$hour" -ge 6 -a "$hour" -lt 12 ]
then
	echo "Good Morning"
elif [ "$hour" -ge 12 -a "$hour" -lt 18 ]
then

	echo "Good Afternoon"
else
	echo "Good Evening"
fi