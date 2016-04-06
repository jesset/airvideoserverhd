# airvideoserverhd

AirVideo Server HD in Docker container


# Run

```
docker run -d \
  -v /data:/Movies \
  -v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket \
  -p 45633:45633 \
  -p 45601:45601 \
  -e PASSWORD=abcd1234 \
  --name=AirVideoServerHD \
  --hostname=MyAirVideoServer \
  --restart=always \
  jesset/airvideoserverhd

```

# Auto Discovery

1. On docker host:(CentOS7)
```
yum install -y avahi-tools avahi nss-mdns
systemctl enable avahi-daemon.service
systemctl start avahi-daemon.service

```

2. Mapping dbus socket to container
```
  -v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket
```

3. docker restart <container>


# Note
1. Single user mode is default, password `1234`
