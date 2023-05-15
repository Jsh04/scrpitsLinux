#!bin/bash

echo "Criando diretórios..."

mkdir /publico 
mkdir /adm
mkdir /ven 
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd silvio -m -s ./bin/bash -p $(openssl passwd -cript senha123) 
useradd roberto -m -s ./bin/bash -p $(openssl passwd -cript senha123) 
useradd sergio -m -s ./bin/bash -p $(openssl passwd -cript senha123) 

adduser silvio GRP_ADM
adduser roberto GRP_VEN
adduser sergio GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /ven
chmod 770 /adm
chmod 770 /sec



