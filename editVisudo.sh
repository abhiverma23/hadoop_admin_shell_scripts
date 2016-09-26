#!/bin/bash

#AUTHOR : ABHISHEK VERMA
#E-MAIL : ABHISHEKVERMA3210@GMAIL.COM
#TITLE : EDIT SUDOERS FILE

clear
CMD="sudo nano /etc/sudoers"
_T=-t
################## HELP ######################
#if [ $1 -eq "--help" ]
#then
#	echo "<SCRIPT_NAME> [<NODE_NAME>,[<NODE_NAME>...]]"
#	exit 24
#fi
############# Node Selections ################
NODE="slave slave1 slave2 slave3 slave4 master"
echo	"Command(s): $CMD"
echo -e "Target(s) :\c"
if [ -z "$1" ]
then 
	echo " $NODE"
else
	NODE=$*
	echo " $NODE"
fi

################################################

############### COMMAND EXECUTION ##############

for n in $NODE
do
	echo -e "\n\n"$n" :"
	ssh $n $_T $CMD
done

