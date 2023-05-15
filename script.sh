#!bin/bash

echo "Criando diretórios..."

mkdir /publico 
mkdir /adm
mkdir /ven 
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd silvio -m -s ./bin/bash -p $(openssl passwd -cript senha123) -G GRP_ADM
useradd roberto -m -s ./bin/bash -p $(openssl passwd -cript senha123) -G GRP_VEN
useradd roberto -m -s ./bin/bash -p $(openssl passwd -cript senha123) -G GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /ven
chmod 770 /adm
chmod 770 /sec



