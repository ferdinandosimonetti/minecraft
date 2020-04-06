#!/bin/bash
PAPERVERSION="162"
SERVER=$(find $HOME -name paper-$PAPERVERSION)
cd $(dirname $SERVER)
java -Xmx6144m -Xms6144m -jar $SERVER nogui
cd -