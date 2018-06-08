# OoklaServer-speedtest.net-daemon
https://support.ookla.com/hc/en-us/articles/234578528-OoklaServer-Installation-Linux-Unix

# How tou use
```
docker run --name ooklaserver --restart=always --publish 8080:8080/udp --publish 8080:8080/tcp \
    --publish 5060:5060/udp --publish 5060:5060/tcp -d rxyjp/ooklaserver-speedtest.net-daemon
```
also requires [HTTP Legacy Fallback](https://support.ookla.com/hc/en-us/articles/234578548-Installing-HTTP-Legacy-Fallback)
