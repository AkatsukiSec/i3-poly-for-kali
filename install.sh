apt-get update
apt-get upgrade
apt-get install git build-essential autoconf pkg-config libcairo2-dev feh libxcb-composite0-dev xcb-proto libxcb-ewmh-dev python-xcbgen terminator cmake compton libxcb-shape0-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev
apt-get install i3 # to get dependencies
mkdir gui && cd gui
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

 ../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
 make -j8
 make install

cd ../../

wget https://github.com/polybar/polybar/releases/download/3.4.1/polybar-3.4.1.tar
tar xvf polybar-3.4.1.tar

cd polybar
mkdir build
cd build
cmake ..
make -j$(nproc)
make install

# cp -r ../../../Dots/* ~/.config
# curl https://archive-media-1.nyafuu.org/w/image/1516/31/1516311858159.jpg > ~/Pictures/bg.jpg
