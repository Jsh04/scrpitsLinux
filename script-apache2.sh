#!/bin/bash


echo "Atualizando o sistema operacional"

apt update -y
apt install apache2 -y
apt service apache2 start

