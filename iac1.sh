#!/bin/bash

echo "criando diretórios..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuários..."

useradd Ágatha -m -s /bin/bash -p $(openssl passwd -crypt senha123) -g GRP_ADM
useradd Felipe -m -s /bin/bash -p $(openssl passwd -crypt senha123) -g GRP_ADM
useradd Jorginho -m -s /bin/bash -p $(openssl passwd -crypt senha123) -g GRP_A>

useradd Pv -m -s /bin/bash -p $(openssl passwd -crypt senha123) -g GRP_VEN
useradd William -m -s /bin/bash -p $(openssl passwd -crypt senha123) -g GRP_VEN
useradd Leandro -m -s /bin/bash -p $(openssl passwd -crypt senha123) -g GRP_VEN

useradd Renata -m -s /bin/bash -p $(openssl passwd -crypt senha123) -g GRP_SEC
useradd Dadinho -m -s /bin/bash -p $(openssl passwd -crypt senha123) -g GRP_SEC
useradd Thiago -m -s /bin/bash -p $(openssl passwd -crypt senha123) -g GRP_SEC

echo "especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

chmod 777 /public

echo"finalizado..."


