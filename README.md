# openttd-jgr-compiled-macos

Pre-compiled macOS bundle for OpenTTD JGR patch pack

# How to use

## Installing dependencies
1. Follow the instructions on https://brew.sh/ to install homebrew (when prompted to enter your password, the characters won't show up on the screen, that is expected behaviour)
2. In your terminal screen, type `brew update && brew upgrade`
3. In your terminal screen, type `brew install sdl zlib xz libpng freetype fontconfig icu4c`

## Running
Download and extract the [DMG file](./openttd-custom-jgrpp-0.29.2-1-gb11f1a233-OSX.dmg) somewhere, and double click on OpenTTD.app inside of the bundle directory to play

# Build Script

The bundle is built with [this build script](./build.sh)

Clone the [JGR patch pack repo](https://github.com/JGRennison/OpenTTD-patches), then drop the build script inside, and you can do `./build.sh` to build it yourself.
