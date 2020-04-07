#!/bin/bash
export WFALLVERSION="327"
echo $WFALLVERSION
export SERVER="$(find $HOME -name waterfall-${WFALLVERSION}.jar)"
echo $SERVER
cd $(dirname $SERVER)
java -Xmx4096m -Xms4096m -jar ${SERVER} nogui
