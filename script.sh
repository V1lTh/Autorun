#!/bin/bash
clear
echo "Install server rustdesk ..."
echo "¿Then enable the necessary ports in the firewall?"
echo "1) Yes "
echo "*) No "
read Conf1
case $Conf1 in
	1) clear
		function val_ip()
  			{
  			local  ip=$1
  			local  stat=1
  			if [[ $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]];
  				then
  					OIFS=$IFS
  					IFS='.'
  					ip=($ip)
  					IFS=$OIFS
  				[[ ${ip[0]} -le 255 && ${ip[1]} -le 255  && ${ip[2]} -le 255 && ${ip[3]} -le 255 ]]
  				stat=$?
  			fi
  			return $stat
 	 		}

			# Comienzo del programa
			echo "Input your IP : "
			read dip
		if val_ip $dip;
			then
				echo p
				ing $dip
				echo "La IP es correcta";
			
			else
				echo "NO es una IP";
		fi
 	;;
	*)
		echo "No"
		clear
		exit
	;;
esac
