FROM       63isok/media-server:latest
MAINTAINER 63isOK <1876180681@qq.com>

EXPOSE 8765

COPY ./entrypoint.sh /entrypoint.sh

ENV GST_DEBUG="3,Kurento*:4,kms*:4,sdp*:4,webrtc*:4,*rtpendpoint:4,rtp*handler:4,rtpsynchronizer:4,agnosticbin:4"

ENTRYPOINT ["/entrypoint.sh"]
