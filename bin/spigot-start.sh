#!/bin/bash
export SPIGOTVERSION="1.15.2"
echo $SPIGOTVERSION
export SERVER="$(find $HOME -name spigot-${SPIGOTVERSION}.jar)"
echo $SERVER
java -Xmx4096m -Xms4096m -jar ${SERVER} nogui
