apt-get update
apt-get -y install libgdbm-dev libdb-dev libffi-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev libz-dev

rm -rf ruby-2.1.2
tar xvf /vagrant/ruby-2.1.2.tar.gz
cd ruby-2.1.2
./configure
make
make install
