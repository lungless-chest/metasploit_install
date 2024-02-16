 sudo apt update
 sudo apt upgrade
 sudo apt-get install build-essential zlib1g zlib1g-dev libxml2 libxml2-dev libxslt-dev locate libreadline6-dev libcurl4-openssl-dev git-core autoconf curl postgresql postgresql-contrib libpq-dev libapr1 libaprutil1 libsvn1 libpcap-dev
git clone https://github.com/rapid7/metasploit-framework.git
 cd metasploit-framework
 sudo bash -c 'for MSF in $(ls msf*); do ln -s /usr/local/src/metasploit-framework/$MSF /usr/local/bin/$MSF;done'
 sudo service postgresql start
 cd ~
 sudo snap install metasploit-framework
 msfdb init
 msfconsole
