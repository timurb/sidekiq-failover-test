#!/bin/sh

which ruby > /dev/null && exit 0

yum install -y zlib zlib-devel gcc-c++ patch readline readline-devel libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison sqlite-devel
git clone https://github.com/rbenv/ruby-build.git /tmp/ruby-build
cd /tmp/ruby-build
./install.sh

ruby-build 2.2.1 /usr/local

export PATH="$PATH:/usr/local/bin"
echo 'export PATH="$PATH:/usr/local/bin"' >> ~/.bash_profile

gem install --no-rdoc --no-ri bundler
