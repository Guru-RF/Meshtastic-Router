#!/bash

SERIAL="/dev/cu.usbmodem83201"



meshtastic --port ${SERIAL} --set-owner ON3URE
meshtastic --port ${SERIAL} --set-owner-short URE
#meshtastic --port ${SERIAL} --ch-set psk default --ch-index 0
#meshtastic --port ${SERIAL} --ch-set name "ON4AOW" --ch-set psk default --ch-set uplink_enabled false --ch-index 1
meshtastic --port ${SERIAL} --set device.role ROUTER
meshtastic --port ${SERIAL} --set position.fixed_position true --setlat 50.9474907 --setlon 4.2401758 --setalt 46

# default
meshtastic --port ${SERIAL} --ch-longfast

# test manu
meshtastic --port ${SERIAL} --ch-longslow

meshtastic --port ${SERIAL} --set lora.region EU_868
meshtastic --port ${SERIAL} --set lora.override_duty_cycle True
meshtastic --port ${SERIAL} --set lora.sx126x_rx_boosted_gain True
meshtastic --port ${SERIAL} --set lora.tx_power 33
meshtastic --port ${SERIAL} --set lora.tx_enabled True
