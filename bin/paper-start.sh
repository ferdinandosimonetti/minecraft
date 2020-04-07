#!/bin/bash
export PAPERVERSION="162"
echo $PAPERVERSION
export SERVER="$(find $HOME -name paper-${PAPERVERSION}.jar)"
echo $SERVER
cd $(dirname $SERVER)
java -Xmx4096m -Xms4096m -jar ${SERVER} nogui
