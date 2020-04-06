#!/bin/bash
export PAPERVERSION="162"
echo $PAPERVERSION
export SERVER="$(find $HOME -name paper-${PAPERVERSION}.jar)"
echo $SERVER
cd $( dirname ${SERVER} )
cd ..
java -Xmx6144m -Xms6144m -jar ${SERVER} nogui
cd -