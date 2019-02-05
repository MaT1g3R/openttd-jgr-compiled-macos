#!/usr/bin/env bash
set -e
pkgname=openttd-jgrpp-git
_installname=openttd

build() {
    ./configure \
        --prefix-dir=$HOME/OpenTTD \
        --binary-name=$_installname \
        --binary-dir=bin \
        --data-dir=share/$_installname \
        --install-dir=$HOME/OpenTTD \
        --doc-dir=share/doc/$_installname \
        --menu-name="OpenTTD" \
        --personal-dir=.$_installname  \
        --without-liblzo2

    make -j
}

package() {
    make bundle_dmg
}

build
package

