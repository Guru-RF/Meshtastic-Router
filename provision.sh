#!/bash

SERIAL="/dev/cu.usbmodem83101"



meshtastic --port ${SERIAL} --set-owner ON6URE
meshtastic --port ${SERIAL} --set-owner-short URE
meshtastic --port ${SERIAL} --set device.role ROUTER
meshtastic --port ${SERIAL} --set position.fixed_position true --setlat 50.9474907 --setlon 4.2401758 --setalt 46
meshtastic --port ${SERIAL} --set lora.region EU_433
meshtastic --port ${SERIAL} --set-ham ON6URE
meshtastic --port ${SERIAL} --set lora.override_duty_cycle true
meshtastic --port ${SERIAL} --set lora.sx126x_rx_boosted_gain True
meshtastic --port ${SERIAL} --ch-set psk none --ch-index 0
meshtastic --port ${SERIAL} --set lora.tx_power 30
meshtastic --port ${SERIAL} --set lora.tx_enabled true
meshtastic --port ${SERIAL} --set lora.modem_preset LONG_SLOW
