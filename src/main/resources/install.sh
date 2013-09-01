#!/bin/bash

echo 'as7 mysql module installation'

if [ "$1" = "" ]; then
   echo 'please enter Jboss as7 home path as parameter'
fi

cp -r com $1/modules

$1/bin/jboss-cli.sh --connect /subsystem=datasources/jdbc-driver=com.mysql:add(driver-name=com.mysql,driver-module-name=com.mysql)