#!/usr/bin/env sh
#https://www.elastic.co/guide/en/elasticsearch/reference/current/deb.html
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -
apt install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list
apt update
