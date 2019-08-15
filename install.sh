#!/bin/sh


echo "[STEP 1] installing dependency source...."
echo "deb http://deb.debian.org/debian stretch-backports main" > /etc/apt/sources.list.d/backports.list
echo "[STEP 1] installing dependency source.... done."


echo "[STEP 2] updating package manager cache...."
apt update
echo "[STEP 2] updating package manager cache.... done."

echo "[STEP 3] installing id3 License update (no deps)...."
dpkg -i id3LicenseActivation.5.9.3-1_amd64.deb
echo "[STEP 3] installing id3 License update (no deps).... done."


echo "[STEP 4] Package configuration.... "
vi /opt/id3licenseactivation/amd64/bin/LicenseActivation.sh

vi /etc/cron.d/id3licenseactivation
echo "[STEP 4] Package configuration.... done. "


echo "[STEP 5] installing dependencies...."
apt install -f -y
echo "[STEP 5] installing dependencies.... done."

#export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
#echo "JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64" >> ~/.bashrc
#echo "PATH=$PATH:$JAVA_HOME/bin" >> ~/.bashrc



echo "all done!"

echo "\n\nREMEMBER TO PERSONNALIZE THE '/opt/id3licenseactivation/amd64/bin/LicenseActivation.sh' FILE WITH THE REQUIRED ARGUMENTS IF IT WAS NOT DONE.\n"
echo "TO ACTIVATE THE LICENSE, PLEASE RUN A FIRST TIME THE '/opt/id3licenseactivation/amd64/bin/LicenseActivation.sh' SCRIPT."
