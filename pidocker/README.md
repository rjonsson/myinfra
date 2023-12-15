# Pidocker

### Add backup cronjob
```sh
# Create crontab for root and add rsync-script
crontab -u root -e
(crontab -l && echo "0 6 * * * /myinfra/pidocker/rsync.sh") | crontab -
```

### Containers used:
* deconz
  - https://github.com/dresden-elektronik/deconz-rest-plugin
  - https://github.com/deconz-community/deconz-docker
  - https://hub.docker.com/r/deconzcommunity/deconz
* esphome
  - https://esphome.io/
  - https://github.com/esphome/esphome
  - https://hub.docker.com/r/esphome/esphome
