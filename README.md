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
  jesset/airvideoserverhd  # pull from docker hub

```

# Note
1. Default is single user mode , password `1234`
