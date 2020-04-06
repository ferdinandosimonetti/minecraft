#!/bin/bash
export PAPERVERSION="162"
export SERVER=$(find $HOME -name paper-${PAPERVERSION})
echo $SERVER
cd $(dirname $SERVER)
java -Xmx6144m -Xms6144m -jar $SERVER nogui
cd -