ls /not/here
# $? stores exit code of last command
echo $? # 1 on mac terminal

HOST="google.com"
ping -c 1 $HOST
echo $? # 0 if connected fine
if [ $? -eq 0 ] ; then
    echo "$HOST available"
else
    echo "$HOST not available or no internet connection"
fi

ping -c 1 $HOST && echo "$HOST available"
ping -c 1 $HOST || echo "$HOST not available"

exit 0
# exit code 0-255
