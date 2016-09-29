#!/bin/bash

#AUTHOR : ABHISHEK VERMA
#E-MAIL : ABHISHEKVERMA3210@GMAIL.COM
#TITLE : REBOOT GIVEN NODE

clear
CMD="sudo /sbin/shutdown -r 0"
_T=-t
_PT="-x '-tt'"
_FLAG_=0
################## HELP ######################
#if [ $1 -eq "--help" ]
#then
#	echo "<SCRIPT_NAME> [<NODE_NAME>,[<NODE_NAME>...]]"
#	exit 24
#fi
############# Node Selections ################
NODE="slave slave1 slave2 slave3 slave4"
echo	"Command(s): $CMD"
echo -e "Target(s) :\c"
if [ -z "$1" ]
then 
	echo " $NODE"
else
	_FLAG_=1
	NODE=$*
	echo " $NODE"
fi

################################################

############### COMMAND EXECUTION ##############

pwd
for n in $NODE
do
	echo $n >> _TEMP_PSSH_USR_LST_
done

pssh -h _TEMP_PSSH_USR_LST_ $_PT -i "$CMD"
if [ _FLAG_ -eq 0 ]
then
	ssh master $_T $CMD
fi

rm _TEMP_PSSH_USR_LST_

#for n in $NODE
#do
#	echo -e "\n\n"$n" :"
#	ssh $n $_T $CMD
#done
