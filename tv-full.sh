#!/bin/bash


echo "INFORME A INTERFACE QUE ESTA COM NAVEGACAO:"
read INTERFACE

sleep 2
echo "....."
sleep 2

teamviewer daemon stop
teamviewer daemon disable

ifconfig $INTERFACE down
macchanger -r $INTERFACE
ifconfig $INTERFACE up

dhclient

teamviewer daemon enable
teamviewer daemon start

echo "SCRIPT EXECULTADO COM SUCESSO"
