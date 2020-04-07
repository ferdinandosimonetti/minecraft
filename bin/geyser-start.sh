#!/bin/bash
GEYSER=$(find $HOME -type f -name Geyser.jar )
cd $( dirname $GEYSER )
java -Xms1536m -Xmx1536m -jar $GEYSER