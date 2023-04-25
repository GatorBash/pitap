#!/bin/bash

#package install function
pkg(){
  if ! which $pkg > /dev/null
  then
    apt-get install $pkg -q -y > /dev/null 2> /dev/null
    wait
    echo "$pkg installed"
  fi
}

#sudo check
if [[ $UID != 0 ]]
then
  printf "\nRun it as root\n"
  exit 1
fi

#internet check
if ! ping -c 1 8.8.8.8
then
  printf "\nConnect to the internet\n"
  exit 1
if

#create pkg file for package install
cat > /tmp/pkg << EOF
tcpdump
aircrack-ng
tshark
EOF

apt-get update -q -y > /dev/null 2> /dev/null
