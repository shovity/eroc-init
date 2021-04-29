#!/usr/bin/env bash

__dirname=`dirname "$(readlink -f "$0")"`
__secret=`openssl rand -base64 12`

name=$1
boot=${2-basic}

cp -r $__dirname/boots/${boot} $name
cd $name

find . -type f -exec sed -i "s/_app_name_/$name/g" {} \;
find . -type f -exec sed -i "s/_secret_key_/$__secret/g" {} \;