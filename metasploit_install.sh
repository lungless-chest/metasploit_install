 sudo apt update
 sudo apt-get install -y python3
 sudo apt-get install -y pip
 pip install shodan
 sudo apt-get install build-essential zlib1g zlib1g-dev libxml2 libxml2-dev libxslt-dev locate libreadline6-dev libcurl4-openssl-dev git-core autoconf curl postgresql postgresql-contrib libpq-dev libapr1 libaprutil1 libsvn1 libpcap-dev
 git clone https://github.com/rapid7/metasploit-framework.git
 sudo snap install -y metasploit-framework
 cd metasploit-framework
 sudo bash -c 'for MSF in $(ls msf*); do ln -s /usr/local/src/metasploit-framework/$MSF /usr/local/bin/$MSF;done'
 cd ~
 sudo service postgresql start
 msfdb init
 sudo apt upgrade -y
 msfconsole
