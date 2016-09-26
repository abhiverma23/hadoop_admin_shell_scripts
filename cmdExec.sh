#AUTHOR : ABHIHSEK VERMA
#E-MAIL : ABHISHEKVERAM3210@GMAIL.COM
#TITLE : EXECUTE COMMON COMMAND OVER CLUSTER

echo $1
echo
echo

NODES="slave slave1 slave2 slave3 slave4"

for n in $NODES
do
	echo $n
        ssh $n "$1"
done

echo "DONE!"
