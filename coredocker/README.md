# set up backup
rsync \
  --archive \
  --verbose \
  --delete \
  --ignore-existing \
  corepve:/tank/server/backup/coredocker/data/node-red \
  /myinfra/coredocker/data/node-red

# build curator and install cronjob
CURATOR_DIR="/myinfra/coredocker/images/curator"
docker build ${CURATOR_DIR} -t curator
(crontab -l && echo "0 0 0 0 0 ${CURATOR_DIR}/curator.sh") | crontab -

# add backup cronjob

# Containers used:
* traefik
  - https://hub.docker.com/_/traefik
* authelia
  - https://hub.docker.com/r/authelia/authelia
* heimdall
  - https://hub.docker.com/r/linuxserver/heimdall
* unifi controller
  - https://hub.docker.com/r/linuxserver/unifi-controller
* Home Assistant
  - https://hub.docker.com/r/homeassistant/home-assistant 
  - https://github.com/home-assistant/core
  - https://www.home-assistant.io/
* Node-RED
  - https://hub.docker.com/r/nodered/node-red
  - https://nodered.org/
* Eclipse Mosquitto
  - https://hub.docker.com/_/eclipse-mosquitto
  - https://mosquitto.org/
* wireguard
  - https://hub.docker.com/r/linuxserver/wireguard
* sonarr
  - https://
* radarr
* jackett
* plex
* uptime-kuma
