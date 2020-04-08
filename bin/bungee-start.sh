#!/bin/bash
BUNGEE=$(find $HOME -type f -name BungeeCord.jar )
cd $( dirname $BUNGEE )
java -Xms1536m -Xmx1536m -jar $BUNGEE