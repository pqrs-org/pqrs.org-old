#!/bin/sh

#========================================
# contact: 
#   Takayama Fumihiko <tekezo@tkym.org>
#
# changelog
#  * 2002 11/15 update to gcc-3.2, binutils-2.13.1
#  * 2002 01/05 add -fno-exceptions
#  * 2001 10/23 refine build process
#  * 2001 09/19 1st release
#
#========================================
# checked hosts 
#  * I tested this script on FreeBSD, NetBSD. 
#  * This script works on Linux (thanks Syo~ji)
#  * This script seems failed on cygwin. 
#    If you succeed building cross-environment on cygwin, mail me please. 
#
# Todo
#  * use KOS instead newlib.


#========================================
# HOWTO build
#
# 1st
#   edit below variable
#
# 2nd
#   put file to 
#     ${distfiles}/binutils-${binutils_version}.tar.gz
#     ${distfiles}/gcc-${gcc_version}.tar.gz
#     ${distfiles}/newlib-${newlib_version}.tar.gz
#
# 3rd
#   you type 
#     $ sh build-dreamcast-cross.sh rebuild 
#
#   building cross compiler takes a long time. wait. 
#

src_dir=/home/const/cross/src
prefix=/home/const/cross/dreamcast
distfiles=/home/const/distfiles/cross
binutils_version="2.13.1"
binutils_targz="binutils-2.13.1.tar.gz"
gcc_version="3.2"
gcc_targz="gcc-3.2.tar.gz"
newlib_version=1.10.0
newlib_targz="newlib-1.10.0.tar.gz"

local_make=gmake


#========================================
# don't edit below
PATH=${prefix}/bin:$PATH

echo_variable () {
    echo "%%% variables -------------------------"
    echo "%%% srcdir: $src_dir"
    echo "%%% prefix: $prefix"
    echo "%%% distfiles: $distfiles"
    echo "%%% binutils_version: $binutils_version"
    echo "%%% gcc_version: $gcc_version"
    echo "%%% newlib_version: $newlib_version"
    echo "%%% -----------------------------------"
}


do_command () {
    echo "%%% $1"
    eval $1
}


initialize_environment () {
    do_command "mkdir -p $src_dir"
    do_command "mkdir -p $prefix"
}


extract_src () {
    do_command "tar zxf $distfiles/$binutils_targz -C $src_dir"
    do_command "tar zxf $distfiles/$gcc_targz -C $src_dir"
    do_command "tar zxf $distfiles/$newlib_targz -C $src_dir"
}


remove_src () {
    do_command "rm -rf $src_dir/binutils-*"
    do_command "rm -rf $src_dir/gcc-*"
    do_command "rm -rf $src_dir/newlib-*"
}


distclean () {
    do_command "rm -rf $src_dir/sh-elf"
    do_command "rm -rf $src_dir/arm-elf"
    do_command "rm -rf $prefix/*"
}


# Usage: build_binutils target
build_binutils () {
    local configure_args=""
    local line=""
    
    do_command "rm -rf $src_dir/$1/binutils"
    do_command "mkdir -p $src_dir/$1/binutils"
    do_command "cd $src_dir/$1/binutils"
    
    configure_args="$configure_args --target=$1"
    configure_args="$configure_args --prefix=$prefix"
    configure_args="$configure_args -v"
    
    line="$line $src_dir/binutils-${binutils_version}/configure $configure_args"
    line="$line &&"
    line="$line ${local_make} all check install"
    do_command "$line"
}


# Usage: build_gcc target configure-args
build_gcc () {
    local configure_args=""
    local line=""
    
    do_command "mkdir -p $prefix/$1"
    do_command "cp -R $src_dir/newlib-${newlib_version}/newlib/libc/include $prefix/$1"
    
    do_command "rm -rf $src_dir/$1/gcc"
    do_command "mkdir -p $src_dir/$1/gcc"
    do_command "cd $src_dir/$1/gcc"
    
    configure_args="$configure_args --target=$1"
    configure_args="$configure_args --prefix=$prefix"
    configure_args="$configure_args --disable-threads"
    configure_args="$configure_args --with-newlib"
    configure_args="$configure_args --with-gnu-ld"
    configure_args="$configure_args --with-gnu-as"
    configure_args="$configure_args --enable-cxx-flags='-fno-exceptions'"
    configure_args="$configure_args $2"
    configure_args="$configure_args -v"
    
    line="$line $src_dir/gcc-${gcc_version}/configure $configure_args"
    line="$line &&"
    line="$line ${local_make} all check install ASFLAGS+='-little'"
    do_command "$line"
}


# Usage: build_newlib target
build_newlib () {
    local configure_args=""
    local line=""
    
    do_command "rm -rf $src_dir/$1/newlib"
    do_command "mkdir -p $src_dir/$1/newlib"
    do_command "cd $src_dir/$1/newlib"
    
    configure_args="$configure_args --target=$1"
    configure_args="$configure_args --prefix=$prefix"
    configure_args="$configure_args -v"
    
    line="$line $src_dir/newlib-${newlib_version}/configure $configure_args"
    line="$line &&"
    line="$line ${local_make} all check install ASFLAGS+='-little'"
    do_command "$line"
}


build_sh_elf () {
    build_binutils sh-elf && \
	build_gcc sh-elf '--with-cpu=sh4 --enable-languages=c,c++' && \
	build_newlib sh-elf
}


build_arm_elf () {
    build_binutils arm-elf && \
	build_gcc arm-elf '--enable-languages=c' && \
	build_newlib arm-elf
}


case "$1" in
    initialize) 
	initialize_environment
	;;
    extract)
	extract_src
	;;
    remove)
	remove_src
	;;
    distclean)
	distclean
	;;
    build-sh-elf)
	build_sh_elf
	;;
    build-arm-elf)
	build_arm_elf
	;;
    all)
	build_sh_elf && build_arm_elf
	;;
    rebuild)
	echo_variable && \
	    distclean && \
	    remove_src && \
	    initialize_environment && \
	    extract_src && \
	    build_sh_elf && \
	    build_arm_elf
	;;
    *)
	echo "Usage: `basename $0` initialize|extract|distclean|remove|build-sh-elf|build-arm-elf|all|rebuild"
	exit 1
	;;
esac



