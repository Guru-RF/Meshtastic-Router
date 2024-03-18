#!/bash

SERIAL="/dev/cu.usbmodem83201"

#meshtastic --port ${SERIAL} --ch-longfast
meshtastic --port ${SERIAL} --set-owner ON3URE
meshtastic --port ${SERIAL} --set-owner-short URE
#meshtastic --port ${SERIAL} --ch-set psk default --ch-index 0
#meshtastic --port ${SERIAL} --ch-set name "ON4AOW" --ch-set psk default --ch-set uplink_enabled false --ch-index 1
meshtastic --port ${SERIAL} --set device.role ROUTER
meshtastic --port ${SERIAL} --set position.fixed_position true --setlat 50.9474907 --setlon 4.2401758 --setalt 46
