#! /bin/sh -

set -e

cd /vagrant/linux-sender/openbsm
make maintainer-clean || :
./configure
make
