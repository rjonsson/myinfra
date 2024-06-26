# Coredocker

### Alias for multiple compose files
```sh
alias dcompose='docker compose -f docker-compose.yaml -f monitor-compose.yaml -f home-compose.yaml -f seed-compose.yaml'


alias dcomposea='{ IFS= read -r D && pushd /myinfra/coredocker/ && \
    docker compose -f docker-compose.yaml -f monitor-compose.yaml -f home-compose.yaml -f seed-compose.yaml "$D"; \
	&& popd; } <<<'


alias dcompose='docker compose -f docker-compose.yaml -f monitor-compose.yaml -f home-compose.yaml -f seed-compose.yaml'

alias dcompose='{ IFS= read -r ARG && pushd ${ARG}"; ls; echo "hej"; && popd "$ARG"; } <<<'

alias dcompose='docker compose -f /myinfra/coredocker/docker-compose.yaml -f /myinfra/coredocker/monitor-compose.yaml -f /myinfra/coredocker/home-compose.yaml -f /myinfra/coredocker/seed-compose.yaml'


```




### Add backup cronjob
```sh
# Create crontab for root and add rsync-script
crontab -u root -e
(crontab -l && echo "0 6 * * * /myinfra/coredocker/rsync.sh") | crontab -
```

### Containers used:
* traefik
  - https://traefik.io/
  - https://github.com/traefik/traefik
  - https://hub.docker.com/_/traefik
* authelia
  - https://www.authelia.com/
  - https://github.com/authelia/authelia
  - https://hub.docker.com/r/authelia/authelia
* heimdall
  - https://hub.docker.com/r/linuxserver/heimdall
  - https://github.com/linuxserver/Heimdall
* unifi controller
  - https://hub.docker.com/r/linuxserver/unifi-controller
* Home Assistant
  - https://www.home-assistant.io/
  - https://github.com/home-assistant/core
  - https://hub.docker.com/r/homeassistant/home-assistant 
* Node-RED
  - https://nodered.org/
  - https://github.com/node-red/node-red
  - https://hub.docker.com/r/nodered/node-red
* Eclipse Mosquitto
  - https://mosquitto.org/
  - https://github.com/eclipse/mosquitto
  - https://hub.docker.com/_/eclipse-mosquitto
* wireguard
  - https://www.wireguard.com/
  - https://hub.docker.com/r/linuxserver/wireguard
* sonarr
  - https://sonarr.tv/
  - https://github.com/Sonarr/Sonarr
  - https://hub.docker.com/r/linuxserver/sonarr
* radarr
  - https://radarr.video/
  - https://github.com/Radarr/Radarr
  - https://hub.docker.com/r/linuxserver/radarr
* jackett
  - https://github.com/Jackett/Jackett
  - https://hub.docker.com/r/linuxserver/jackett
* plex
  - https://www.plex.tv/
  - https://hub.docker.com/r/linuxserver/plex
* uptime-kuma
  - https://uptime.kuma.pet/
  - https://github.com/louislam/uptime-kuma
  - https://hub.docker.com/r/louislam/uptime-kuma

