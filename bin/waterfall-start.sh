#!/bin/bash
#export WFALLVERSION="327"
export WFALLVERSION="346"
echo $WFALLVERSION
export SERVER="$(find $HOME -name waterfall-${WFALLVERSION}.jar)"
echo $SERVER
cd $(dirname $SERVER)
java -Xmx1024m -Xms1024m -jar ${SERVER} nogui
