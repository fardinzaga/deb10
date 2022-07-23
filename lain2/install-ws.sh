#!/bin/bash
#installer Websocker tunneling 
#created Bye HideSSH

cd

#Install Script Websocket-SSH Python
wget -O /usr/local/bin/ws-dropbear https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/dropbear-ws.py
wget -O /usr/local/bin/ws-julian https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/julian-ws.py
wget -O /usr/local/bin/ws-multi https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/multi-ws.py
wget -O /usr/local/bin/ws-openssh https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/openssh-ws.py
wget -O /usr/local/bin/ws-pastibisa https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/pastibisa-ws.py

#izin permision
chmod +x /usr/local/bin/ws-dropbear
chmod +x /usr/local/bin/ws-julian
chmod +x /usr/local/bin/ws-multi
chmod +x /usr/local/bin/ws-openssh
chmod +x /usr/local/bin/ws-pastibisa

#System OpenSSH Websocket-SSH Python
wget -O /etc/systemd/system/ws-dropbear.service https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/service-wsdropbear && chmod +x /etc/systemd/system/ws-dropbear.service

#System Websocket-OpenVPN Python
wget -O /etc/systemd/system/ws-julian.service https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/service-wsjulian && chmod +x /etc/systemd/system/ws-julian.service

#System OpenSSH Websocket-SSH Python
wget -O /etc/systemd/system/ws-multi.service https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/service-wsmulti && chmod +x /etc/systemd/system/ws-multi.service

#System OpenSSH Websocket-SSH Python
wget -O /etc/systemd/system/ws-openssh.service https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/service-wsopenssh && chmod +x /etc/systemd/system/ws-openssh.service

#System OpenSSH Websocket-SSH Python
wget -O /etc/systemd/system/ws-pastibisa.service https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/service-wspastibisa && chmod +x /etc/systemd/system/ws-pastibisa.service

#restart service
#
#systemctl daemon-reload
#Enable & Start & Restart ws-dropbear service
systemctl enable ws-dropbear.service
systemctl start ws-dropbear.service
systemctl restart ws-dropbear.service

#Enable & Start ws-julian service
systemctl enable ws-julian.service
systemctl start ws-julian.service
systemctl restart ws-julian.service

#Enable & Start & Restart ws-multi service
systemctl enable ws-multi.service
systemctl start ws-multi.service
systemctl restart ws-multi.service

#Enable & Start & Restart ws-openssh service
systemctl enable ws-openssh.service
systemctl start ws-openssh.service
systemctl restart ws-openssh.service

#Enable & Start & Restart ws-pastibisa service
systemctl enable ws-pastibisa.service
systemctl start ws-pastibisa.service
systemctl restart ws-pastibisa.service
