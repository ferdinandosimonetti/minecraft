#!/bin/bash
GEYSER=$(find $HOME -type f -name Geyser.jar )
cd $( dirname $GEYSER )
java -Xms512m -Xmx512m -jar $GEYSER
