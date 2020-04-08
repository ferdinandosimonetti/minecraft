#!/bin/bash
export PAPERVERSION="162"
echo $PAPERVERSION
export SERVER="$(find $HOME -name paper-${PAPERVERSION}.jar)"
echo $SERVER
cd ${HOME}/minecraft/${1}
java -Xmx2048m -Xms2048m -jar ${SERVER} nogui
