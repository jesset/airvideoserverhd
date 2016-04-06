#!/bin/bash

set -e

if [[ -n $PASSWORD ]]; then
  sed -i "/^singleUserPassword/s,1234,${PASSWORD},g" /opt/Server.properties
fi

exec /opt/AirVideoServerHD --config=/opt/Server.properties
