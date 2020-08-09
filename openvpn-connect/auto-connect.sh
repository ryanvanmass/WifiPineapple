openvpn TESTUSER.ovpn &

#pass client data through VPN
iptables -t nat -A POSTROUTING -s 172.16.42.0/24 -o tun0 -j MASQUERADE
iptables -A FORWARD -s 172.16.42.0/24 -o tun0 -j ACCEPT 
iptables -A FORWARD -d 172.16.42.0/24 -m state --state ESTABLISHED,RELATED -i tun0 -j ACCEPT
