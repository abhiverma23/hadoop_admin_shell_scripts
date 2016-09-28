cd ~/Desktop/
tar -xvzf VMwareTools-10.0.6-3595377.tar.gz
cd vmware-tools-distrib/
./vmware-install.pl
cd ~
ls
mkdir installations
echo ------
ls
echo -----
cd installations
pwd
cp /mnt/hgfs/SHARE/* .
echo ------
ls
echo ------StartingJava----
rpm -Uvh jdk-7u17-linux-i586.rpm
alternatives --install /usr/bin/java/ java /usr/java/latest/jre/bin/java 20000
export JAVA_HOME="/usr/java/latest"
javac -version
java -version
echo ----FinisedJava---
hostname
groupadd hadoop
useradd hduser -g hadoop
echo "*********************"
echo "Time to write password but copy it before"
echo "hduser    ALL=(ALL)       ALL"
read -p "Bar bar copy karna bhul jate ho ab mat bhulna"
echo "*********************"
passwd hduser
visudo
echo "+++++++++++++++++++++++++++"
echo "Time to provide password or not i don't know"
echo "++++++++++++++++++++++++++"
echo "execute the below commands"
echo "su - hduser"
echo "cp /mnt/hgfs/SHARE/scPrt2.sh ~/scPrt2.sh; ./scPrt2.sh"
