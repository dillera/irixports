#!/opt/local/bin/mksh ../.port.sh
port=openssl
version=1.0.2s
useconfigure=true
configscript=Configure
files="https://www.openssl.org/source/openssl-1.0.2s.tar.gz openssl-1.0.2s.tar.gz cf43d57a21e4baf420b3628677ebf1723ed53bc1"
# _rld_new_interface is provided by the runtime linker
configopts="irix-mips3-gcc -Wl,--unresolved-symbols=ignore-all"
