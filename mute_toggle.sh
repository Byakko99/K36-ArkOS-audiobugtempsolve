#!/bin/bash

#if [[ -z $(pgrep kodi) ]]; then
#  cur_vol="$(/usr/local/bin/current_volume)"
#  if [[ "$(tr -d '\0' < /proc/device-tree/compatible)" == *"rk3326"* ]]; then
#    DEVICE="Playback"
#  else
#    DEVICE="Master"
#  fi

#  if [ -f /dev/shm/VOLUME_BEFORE_MUTED ] && [ "$cur_vol" = "0%" ]; then
#    amixer -q set ${DEVICE} $(cat /dev/shm/VOLUME_BEFORE_MUTED)
#    rm -f /dev/shm/VOLUME_BEFORE_MUTED
#  else
#    echo $cur_vol > /dev/shm/VOLUME_BEFORE_MUTED
#    amixer -q set ${DEVICE} 0
#  fi
#fi
