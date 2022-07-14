#!/bin/bash
#installer Websocker tunneling 
#created Bye HideSSH

cd

#Install Script Websocket-SSH Python
wget -O /usr/local/bin/ws-dropbear https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/dropbear-ws.py
wget -O /usr/local/bin/ws-bintang https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/bintang-ws.py
wget -O /usr/local/bin/ws-multi https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/multi-ws.py
wget -O /usr/local/bin/ws-openssh https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/openssh-ws.py
wget -O /usr/local/bin/ws-dropbear https://raw.githubusercontent.com/fardinzaga/websocketssh/master/proxy/dropbear-ws.py
wget -O /usr/local/bin/ws-fauzanvpn https://raw.githubusercontent.com/fardinzaga/websocketssh/master/proxy/fauzanvpn-ws.py
wget -O /usr/local/bin/ws-ovpn https://raw.githubusercontent.com/fardinzaga/websocketssh/master/proxy/ws-ovpn.py && chmod +x /usr/local/bin/ws-ovpn.py

#izin permision
chmod +x /usr/local/bin/ws-dropbear
chmod +x /usr/local/bin/ws-bintang
chmod +x /usr/local/bin/ws-multi
chmod +x /usr/local/bin/ws-openssh
chmod +x /usr/local/bin/ws-dropbear
chmod +x /usr/local/bin/ws-fauzanvpn
chmod +x /usr/local/bin/ws-ovpn

#System OpenSSH Websocket-SSH Python
#wget -O /etc/systemd/system/ws-dropbear.service https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/service-wsdropbear && chmod +x /etc/systemd/system/ws-dropbear.service

#System OpenSSH Websocket-SSH Python
wget -O /etc/systemd/system/ws-bintang.service https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/service-wsbintang && chmod +x /etc/systemd/system/ws-bintang.service

#System OpenSSH Websocket-SSH Python
wget -O /etc/systemd/system/ws-multi.service https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/service-wsmulti && chmod +x /etc/systemd/system/ws-multi.service

#System OpenSSH Websocket-SSH Python
wget -O /etc/systemd/system/ws-openssh.service https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/service-wsopenssh && chmod +x /etc/systemd/system/ws-openssh.service

#System Dropbear Websocket-SSH Python
wget -O /etc/systemd/system/ws-dropbear.service https://raw.githubusercontent.com/fardinzaga/websocketssh/master/proxy/service-wsdropbear && chmod +x /etc/systemd/system/ws-dropbear.service

#System OpenSSH Websocket-SSH Python
wget -O /etc/systemd/system/ws-fauzanvpn.service https://raw.githubusercontent.com/fardinzaga/websocketssh/master/proxy/service-wsfauzanvpn && chmod +x /etc/systemd/system/ws-fauzanvpn.service

#System Websocket-OpenVPN Python
wget -O /etc/systemd/system/ws-ovpn.service https://raw.githubusercontent.com/fardinzaga/websocketssh/master/proxy/service.wsovpn && chmod +x /etc/systemd/system/ws-ovpn.service

#restart service
#
#systemctl daemon-reload
#Enable & Start & Restart ws-dropbear service
#systemctl enable ws-dropbear.service
#systemctl start ws-dropbear.service
#systemctl restart ws-dropbear.service

#Enable & Start & Restart ws-bintang service
systemctl enable ws-bintang.service
systemctl start ws-bintang.service
systemctl restart ws-bintang.service

#Enable & Start & Restart ws-maulana service
systemctl enable ws-multi.service
systemctl start ws-multi.service
systemctl restart ws-multi.service

#Enable & Start & Restart ws-zahara service
systemctl enable ws-openssh.service
systemctl start ws-openssh.service
systemctl restart ws-openssh.service

#Enable & Start & Restart ws-dropbear service
systemctl enable ws-dropbear.service
systemctl start ws-dropbear.service
systemctl restart ws-dropbear.service

#Enable & Start & Restart ws-fauzanvpn service
systemctl enable ws-fauzanvpn.service
systemctl start ws-fauzanvpn.service
systemctl restart ws-fauzanvpn.service

#Enable & Start ws-ovpn service
systemctl enable ws-ovpn.service
systemctl start ws-ovpn.service
systemctl restart ws-ovpn.service
