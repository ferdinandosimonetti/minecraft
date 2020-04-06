#!/bin/bash
export BUKKITVERSION="1.15.2"
echo $BUKKITVERSION
export SERVER="$(find $HOME -name craftbukkit-${BUKKITVERSION}.jar)"
echo $SERVER
cd $( dirname ${SERVER} )
cd ..
java -Xmx6144m -Xms6144m -jar ${SERVER} nogui
cd -