# aivoicebox

- cp aivoicebox/logo.svg /usr/local/share/wifi-connect/ui/static/media/logo.34c0c94e.svg

Steps
1. driver install seeed-voicecard https://wiki.seeedstudio.com/ReSpeaker_2_Mics_Pi_HAT_Raspberry/
2. Install docker git and docker-compose
3. git clone https://github.com/jaysofoundation/aivoicebox-skills.git
3. git clone https://github.com/jaysofoundation/aivoicebox.git
4. pip install paho-mqtt or pip3 install -r aivoicebox-skills/requirements.txt --user
5. install gotty https://lindevs.com/install-gotty-on-raspberry-pi/
6. docker-compose -f aivoicebox/aivoicebox.yml up -d
7. check rc.local logs command: grep rc.local /var/log/syslog
