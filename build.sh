export SYSROOT=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../android-arm-toolchain
ARCH=arm-linux-androideabi
export PATH=$SYSROOT/bin:$SYSROOT/$ARCH/bin:$PATH
cp -f $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../sphinxbase/config.sub Cfg/. # for ARCH support
./configure --build=x86_64 --host=$ARCH --enable-static=yes --enable-shared=no --with-sysroot=$SYSROOT --prefix=$SYSROOT --disable-sndfile --disable-fftw && make && sudo make install
