BASE_HOME=/etc
DONE_FILE=$BASE_HOME/DONE

if [ -s $DONE_FILE ]
then
    echo "RESTART NOT REQUIRED"   
else
    printf "%s" "waiting for 8.8.8.8 ..."
    while ! ping -c 1 -n -w 1 8.8.8.8 &> /dev/null
    do
        printf "%c" "."
    done
    yes y | bash <(curl -L https://github.com/balena-io/wifi-connect/raw/master/scripts/raspbian-install.sh)
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
