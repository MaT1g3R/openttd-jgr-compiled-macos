#!/usr/bin/env bash
set -e

build() {
    ./configure \
        --menu-name="OpenTTD" \
        --without-liblzo2 \
        --enable-static

    make -j
}

package() {
    make bundle_dmg
}

build
package

