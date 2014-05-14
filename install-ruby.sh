apt-get update

# Install Ruby

apt-get -y install libgdbm-dev libdb-dev libffi-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev libz-dev

rm -rf ruby-2.1.2
tar xvf /vagrant/ruby-2.1.2.tar.gz
cd ruby-2.1.2
./configure
make
make install

cd ..

# Install SDL

apt-get -y install g++ libfreetype6-dev

unzip /vagrant/SDL-1.2.15.zip
cd SDL-1.2.15
./configure --with-x=no
make
make install

cd ..

unzip /vagrant/SDL_ttf-2.0.11.zip
cd SDL_ttf-2.0.11
./configure --with-x=no
make
make install

cd ..

tar xvf /vagrant/sge030809.tar.gz
cd sge030809
make FT_CFLAGS="-D_SGE_NOTTF=true"
make install

cd ..

# Install ImageMagick

apt-get -y install libpng-dev libjpeg-dev libgif-dev pkg-config

tar xvf /vagrant/ImageMagick.tar.gz
cd ImageMagick-6.8.9-1
./configure
make
make install

cd ..

ldconfig

