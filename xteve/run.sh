#!/bin/bash

# EULA akzeptieren
if [ "${EULA}" != "true" ]; then
    echo "You need to accept the EULA by setting 'eula' to true in the options."
    exit 1
fi

# Minecraft Server starten
java -Xmx=8192M -Xms=1024M -jar minecraft_server.jar nogui
