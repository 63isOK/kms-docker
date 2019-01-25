# Docker
---
## how to use this Dockerfile
---
- latest: the latest version
- other: the old version
  - 0.8.0: kms with rtmp client, no turn setting
  - 0.8.1: kms with rtmp client, with turn setting(KMS_TURN_URL)

---
- create container：
  docker run -t -i --name=kms 63isok/media-server:latest
- open shell: 
  docker exec -u=yb -w=/home/yb -t -i kms /usr/bin/zsh

---
user:yb,passwd:1

