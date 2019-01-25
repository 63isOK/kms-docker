#!/bin/bash -x
set -e

cd /home/yb/workspace/svn/kms-6.9.0/kms-omni-build/build-Release

if [ -n "$KMS_TURN_URL" ]; then
  echo "turnURL=$KMS_TURN_URL" > ./config/kurento/WebRtcEndpoint.conf.ini
fi

# if [ -n "$KMS_STUN_IP" -a -n "$KMS_STUN_PORT" ]; then
#   # Generate WebRtcEndpoint configuration
#   echo "stunServerAddress=$KMS_STUN_IP" > /etc/kurento/modules/kurento/WebRtcEndpoint.conf.ini
#   echo "stunServerPort=$KMS_STUN_PORT" >> /etc/kurento/modules/kurento/WebRtcEndpoint.conf.ini
# fi

# Remove ipv6 local loop until ipv6 is supported
cat /etc/hosts | sed '/::1/d' | tee /etc/hosts > /dev/null

# exec /usr/bin/kurento-media-server "$@"

exec kurento-media-server/server/kurento-media-server \
    --modules-path=. \
    --modules-config-path=./config \
    --conf-file=./config/kurento.conf.json \
    --gst-plugin-path=.
