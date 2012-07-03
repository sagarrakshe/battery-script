a=`ibam --percentbattery | head --lines 1`
set $a
flag=0

if [ $3 -eq 100 -a $flag -eq 0 ]
then
notify-send "Battery is full" " Remove the charger and save electricity!"
flag=1
aplay -q full.wav 

elif [ $3 -le 10 -a $flag -eq 0 ]
then
notify-send "Battery Low" "Please charge"
flag=1
aplay -q low.wav

fi
