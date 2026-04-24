#!/usr/bin/env bash
set -e

echo "Starting Luxtronik2 Modbus Proxy..."

python3 -m luxtronik2_modbus_proxy.main \
    --luxtronik-host "${luxtronik_host}" \
    --luxtronik-port "${luxtronik_port}" \
    --modbus-port "${modbus_port}"
