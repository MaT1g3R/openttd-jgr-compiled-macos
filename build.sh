#!/usr/bin/env bash
set -e
pkgname=openttd-jgrpp-git
_installname=openttd

_configure() {
    ./configure \
        --menu-name="OpenTTD" \
        --without-liblzo2 \
        --enable-static
}

build() {
    make -j
}

package() {
    make bundle_dmg
}

_configure
build
package

