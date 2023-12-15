#!/bin/bash
export SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
source ${SCRIPT_DIR}/.env

rsync \
  --archive \
  --partial \
  --delete \
  --verbose \
  --progress \
  --rsh=ssh \
  ${DOCKER_DIR} \
  ${RSYNC_TARGET}
