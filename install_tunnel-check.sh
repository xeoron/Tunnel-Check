#!/bin/sh -e
#Author: Jason Campisi
#Date: 10/15/207
#version 0.3.0
#Released under the GPL v2 or higher
NAME="tunnel_check"
EXT="sh"
FILE="$NAME.$EXT"
LOCATION="/opt/local/bin/"
SERVAR=''
PROGVAR=''

echo "$FILE installer:";

echo "Checking script:"
   if [ ! -n "$FILE" ]; then
      echo " --> Error - Filename is not set!"
      exit 1;
   elif [ ! -e "$FILE" ]; then
      echo " --> Error - The location of '$FILE' does not exist!"
      exit 1;
   fi
echo " --> $FILE found!";


while [[ $SERVAR == "" ]] || [[ $PROGVAR == "" ]] #grab service and program target from the user
 do
   if [ -z $SERVAR ]; then
      read -p 'What VPN\SSH hostname service do you want to check is running? ' SERVAR 
   fi
   if [ -z $PROGVAR ]; then
      read -p 'Name of the program you wish to kill when the VPN/SSH tunnel is down? ' PROGVAR
   fi
 done

echo "Updating $FILE"
   sed -i -e "s/\(SERVICE=\).*/\1\'$SERVAR\'/" $FILE
   sed -i -e "s/\(PROGRAM=\).*/\1\'$PROGVAR\'/" $FILE
   if [ -n $FILE-e ]; then #remove temp file
        rm $FILE-e
   fi

echo " Setting file to executable...";
   chmod +x ./$FILE
echo " Installing $NAME to $LOCATION ...";
   sudo cp ./$FILE $LOCATION$NAME
