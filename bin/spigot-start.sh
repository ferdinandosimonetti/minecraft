#!/bin/bash
export SPIGOTVERSION="1.15.2"
echo $SPIGOTVERSION
export SERVER="$(find $HOME -name spigot-${BUKKITVERSION}.jar)"
echo $SERVER
cd $( dirname ${SERVER} )
cd ..
java -Xmx6144m -Xms6144m -jar ${SERVER} nogui
cd -