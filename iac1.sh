#!/bin/bash

echo "criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha
)-G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha
)-G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha
)-G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha
)-G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha
)-G GRP_VEN
useradd roberta -m -s /bin/bash -p $(openssl passwd -crypt Senha
)-G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha
)-G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha
)-G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha
)-G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


chmod u+rwx,g+rw,o-rwx /adm
chmod u+rwx,g+rw,o-rwx /ven
chmod u+rwx,g+rw,o-rwx /sec
chmod a+rwx /publico

echo "Fim..."
 

