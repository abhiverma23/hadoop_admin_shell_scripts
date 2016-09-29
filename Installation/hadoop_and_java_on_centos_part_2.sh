sh-keygen
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 700 ~/.ssh/authorized_keys
sudo service sshd start
sudo service iptables stop
sudo chkconfig sshd on
sudo chkconfig iptables off
echo "=========================="
echo "Time to check SSH configuration"
echo "---------------------------"
ssh localhost
echo "==================="
echo "Thankyou FOr Using VermA's SCriPt"
echo "==================="


echo "******************************************************"
echo "Starting new section"
sudo cp /mnt/hgfs/SHARE/hadoop-1.0.4.tar.gz /usr/local
cd /usr/local
sudo tar -xzf hadoop-1.0.4.tar.gz
sudo chown -R hduser:hadoop hadoop-1.0.4
sudo ln -s hadoop-1.0.4 hadoop
sudo chown -R hduser:hadoop hadoop

#sudo mkdir -p /app/hadoop/tmp
#sudo chown -R hduser:hadoop /app/hadoop/tmp
#sudo chmod -R 750 /app
#sudo chmod -R 750 /app/hadoop
#sudo chmod -R 750 /app/hadoop/tmp

echo "Write this in middle of file... "
echo
echo "export HADOOP_OPTS=-Djava.net.preferIPv4Stack=true"
echo 'export HADOOP_HOME_WARN_SUPPRESS="TRUE"'
echo "export JAVA_HOME=/usr/java/default"

read -p "Press [ENTER] before it copy the above three lines"
nano /usr/local/hadoop/conf/hadoop-env.sh

echo "Thank You for your support..."
echo "*********************************"

cat /mnt/hgfs/SHARE/bashrc >> ~/.bashrc
cat /mnt/hgfs/SHARE/core-site.xml > /usr/local/hadoop/conf/core-site.xml
cat /mnt/hgfs/SHARE/mapred-site.xml > /usr/local/hadoop/conf/mapred-site.xml
cat /mnt/hgfs/SHARE/hdfs-site.xml > /usr/local/hadoop/conf/hdfs-site.xml

source ~/.bashrc

hadoop namenode -format

echo ----------------------------------------HadoopConfigured-------------

echo "Bye Bye!..."
