WEBSITE="ping -c 5 google.com"

#NODES="master slave slave1 slave2 slave3 slave4"

#for n in $NODES
#do
#	echo -e "$n : \c"
#	ssh $n $WEBSITE | grep packets
#done
#
#echo "DONE!"


pssh -h pssh-hosts -l hduser -i "$WEBSITE | grep packets"
