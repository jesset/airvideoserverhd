# airvideoserverhd

AirVideo Server HD in Docker container


# Build
```
docker build \
  --build-arg=http_proxy="http://a.b.c.d:eeee" \
  --build-arg=https_proxy="http://http://a.b.c.d:eeee" \
  -t jesset/airvideoserverhd  .

```

# Run

```
docker run -d \
  -v /data:/Movies \
  -v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket \
  -p 45633:45633 \
  -p 45601:45601 \
  -u nobody \
  --name=AirVideoServerHD \
  jesset/airvideoserverhd  # pull from docker hub

```

# Note
1. Default is single user mode , password `1234`
