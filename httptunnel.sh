ssh -D 8123 -f -q -N -p 765 alex@24.230.225.254

https://www.digitalocean.com/community/tutorials/how-to-route-web-traffic-securely-without-a-vpn-using-a-socks-tunnel

sudo kill -9 $(sudo lsof -t -i:8123)
