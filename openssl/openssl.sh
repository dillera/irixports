#!/bin/ksh
port=openssl
version=1.0.2s
configscript=Configure
sha1sum=cf43d57a21e4baf420b3628677ebf1723ed53bc1

fetch() {
	runfetch "https://www.openssl.org/source/openssl-1.0.2s.tar.gz"
}
configure() {
	#_rld_new_interface is provided by the runtime linker
	runconfigure irix-mips3-gcc -Wl,--unresolved-symbols=ignore-all
}
build() {
	runmake
}
install() {
	runmakeinstall
}

. ../.include.sh