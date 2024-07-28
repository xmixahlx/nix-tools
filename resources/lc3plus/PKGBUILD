#Author : Mitchel Stewart <quackdoctech@gmaiil.com>

pkgname=liblc3plus-float
pkgver=1.3.6
pkgrel=1
pkgdesc='Shared LC3 float library'
arch=('x86_64')
url=' '
license=('BSD')
depends=(
cmake
)
makedepends=(
  clang
  git
)
provides=('libLC3plus.so')
source=('https://www.etsi.org/deliver/etsi_ts/103600_103699/103634/01.03.01_60/ts_103634v010301p0.zip'
        'CMakeLists.txt'
        'LC3plus.pc.in')

sha256sums=('SKIP'
            'SKIP'
            'SKIP')

build() {
    cd $srcdir/ETSI_Release/LC3plus_ETSI_src_v172062927c2_20210930/src/floating_point/
    cp $srcdir/CMakeLists.txt ./
    cp $srcdir/LC3plus.pc.in ./
    mkdir -p build && cd build
    cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
    make
}

package() {
  cd $srcdir/ETSI_Release/LC3plus_ETSI_src_v172062927c2_20210930/src/floating_point/build
  make DESTDIR="$pkgdir/" install
}
