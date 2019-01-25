# Docker
---
## how to use this Dockerfile
---
- latest: the latest version
- other: the old version
  - 0.8.0: kms with rtmp client, with turn setting(KMS_TURN_URL)

---
- create container：
  docker run -d --name kms -p 8888:8765 -e KMS_TURN_URL=turnURL=test123:123456@192.168.100.180:3478 63isok/kms-docker-autobuild:latest
- open shell: 
  docker exec -u=yb -w=/home/yb -t -i kms /usr/bin/zsh

---
user:yb,passwd:1

