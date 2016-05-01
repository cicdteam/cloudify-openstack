#!/bin/sh

cd \
  && sudo easy_install --quiet --upgrade pip virtualenv \
  && curl -sSL http://repository.cloudifysource.org/org/cloudify3/3.3.1/sp-RELEASE/cloudify-centos-Core-cli-3.3.1-sp_b310.x86_64.rpm -o cfy.rpm \
  && sudo rpm --quiet -i cfy.rpm \
  && rm cfy.rpm \
  && echo "source /opt/cfy/env/bin/activate" >>~/.bashrc \
  && sudo yum -y -q clean all
