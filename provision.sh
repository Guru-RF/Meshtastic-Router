#!/bash

SERIAL="/dev/cu.usbmodem83101"



meshtastic --port ${SERIAL} --set-owner ON3URE
meshtastic --port ${SERIAL} --set-owner-short URE
meshtastic --port ${SERIAL} --set device.role ROUTER
meshtastic --port ${SERIAL} --set position.fixed_position true --setlat 50.9474907 --setlon 4.2401758 --setalt 46
meshtastic --port ${SERIAL} --set lora.region EU_868
meshtastic --port ${SERIAL} --set lora.override_duty_cycle true
meshtastic --port ${SERIAL} --set lora.sx126x_rx_boosted_gain True
meshtastic --port ${SERIAL} --set lora.tx_power 30
meshtastic --port ${SERIAL} --set lora.tx_enabled true
meshtastic --port ${SERIAL} --set lora.modem_preset LONG_SLOW
