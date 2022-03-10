BASE_HOME=/etc
DONE_FILE=$BASE_HOME/DONE

if [ -s $DONE_FILE ]
then
    echo "RESTART NOT REQUIRED"   
else
    sudo bash /home/pi/seeed-voicecard/install.sh
    status=$?
    if [ $status -eq 0 ]
    then
        echo "Installation Successful"
        echo 1 > $DONE_FILE
    else
        echo "Command installation Unsuccessful"
    fi
fi