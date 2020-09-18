
#/bin/bash
SCRIPT_DIR="$(
    cd "$(dirname "$0")"
    pwd
)"


CONFIGURE_FLAGS="--enable-static --enable-pic --disable-cli --disable-asm"
Output="$SCRIPT_DIR/x264-macos"
mkdir -p $Output

echo $Output

cd x264
make clean

./configure $CONFIGURE_FLAGS --prefix=$Output

make -j `nproc`
make install



