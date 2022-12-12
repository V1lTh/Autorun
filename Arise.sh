#!/bin/bash
clear
echo "Elige"
echo "1) Ping"
echo "2) Otro"
read $Menu
    case $Menu in
        1) clear
        echo "Pon Ip"
        read $ip
            if     
            [[ $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]
             then;
  					OIFS=$IFS
  					IFS='.'
  					ip=($ip)
  					IFS=$OIFS
  				[[ ${ip[0]} -le 255 && ${ip[1]} -le 255  && ${ip[2]} -le 255 && ${ip[3]} -le 255 ]]
  				stat=$?
            ;then
                echo "Nice"
            else
                echo "Failed"
            fi  ;;
        2)
    esac
