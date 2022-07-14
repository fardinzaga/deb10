#!/bin/bash
#installer Websocker tunneling 
#created Bye HideSSH

cd

#Install Script Websocket-SSH Python
wget -O /usr/local/bin/ws-dropbear https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/dropbear-ws.py
wget -O /usr/local/bin/ws-bintang https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/bintang-ws.py
wget -O /usr/local/bin/ws-multi https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/multi-ws.py
wget -O /usr/local/bin/ws-openssh https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/openssh-ws.py
wget -O /usr/local/bin/ws-ovpn https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/ovpn-ws.py
wget -O /usr/local/bin/ws-pastibisa https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/pastibisa-ws.py
wget -O /usr/local/bin/ws-ovpn https://raw.githubusercontent.com/fardinzaga/websocketssh/master/proxy/ws-ovpn.py && chmod +x /usr/local/bin/ws-ovpn.py

#izin permision
chmod +x /usr/local/bin/ws-dropbear
chmod +x /usr/local/bin/ws-bintang
chmod +x /usr/local/bin/ws-multi
chmod +x /usr/local/bin/ws-openssh
chmod +x /usr/local/bin/ws-ovpn
chmod +x /usr/local/bin/ws-pastibisa
chmod +x /usr/local/bin/ws-ovpn

#System OpenSSH Websocket-SSH Python
wget -O /etc/systemd/system/ws-dropbear.service https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/service-wsdropbear && chmod +x /etc/systemd/system/ws-dropbear.service

#System OpenSSH Websocket-SSH Python
wget -O /etc/systemd/system/ws-bintang.service https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/service-wsbintang && chmod +x /etc/systemd/system/ws-bintang.service

#System OpenSSH Websocket-SSH Python
wget -O /etc/systemd/system/ws-multi.service https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/service-wsmulti && chmod +x /etc/systemd/system/ws-multi.service

#System OpenSSH Websocket-SSH Python
wget -O /etc/systemd/system/ws-openssh.service https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/service-wsopenssh && chmod +x /etc/systemd/system/ws-openssh.service

#System Dropbear Websocket-SSH Python
wget -O /etc/systemd/system/ws-ovpn.service https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/service-wsovpn && chmod +x /etc/systemd/system/ws-ovpn.service

#System OpenSSH Websocket-SSH Python
wget -O /etc/systemd/system/ws-pastibisa.service https://raw.githubusercontent.com/fardinzaga/deb10/master/websocket/service-wspastibisa && chmod +x /etc/systemd/system/ws-pastibisa.service

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

#Enable & Start & Restart ws-multi service
systemctl enable ws-multi.service
systemctl start ws-multi.service
systemctl restart ws-multi.service

#Enable & Start & Restart ws-openssh service
systemctl enable ws-openssh.service
systemctl start ws-openssh.service
systemctl restart ws-openssh.service

#Enable & Start & Restart ws-ovpn service
systemctl enable ws-ovpn.service
systemctl start ws-ovpn.service
systemctl restart ws-ovpn.service

#Enable & Start & Restart ws-pastibisa service
systemctl enable ws-pastibisa.service
systemctl start ws-pastibisa.service
systemctl restart ws-pastibisa.service

#Enable & Start ws-ovpn service
systemctl enable ws-ovpn.service
systemctl start ws-ovpn.service
systemctl restart ws-ovpn.service
