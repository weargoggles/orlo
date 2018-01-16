#!/bin/sh

set -ex
apt-get update

apt-get install -y build-essential python2.7-dev \
        libldap2-dev libsasl2-dev ldap-utils python-tox \
            lcov valgrind libldap-2.4-2


pip install .

apt-get remove --purge -y build-essential python2.7-dev libldap2-dev libsasl2-dev ldap-utils python-tox lcov valgrind
apt-get autoremove -y


rm -rf /var/lib/apt/lists/* 

mkdir /etc/orlo
cp etc/orlo.ini /etc/orlo/
