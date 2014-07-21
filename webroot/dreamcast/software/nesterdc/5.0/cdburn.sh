#!/bin/sh

# this copy script might help some people out. 
# The information to create this came from here: http://mc.pp.se/dc/cdr.html
# thanks Marcus
#
# I have a directory structure like this:
#
# /cdrtools (cdrecord, mkisofs, and IP.BIN are in here)
# /cdrtools/files (games directory, and 1ST_READ.BIN are in here)
#
# replace the dev=1,0,0 in the commands below with your burner device number, 
# which is returned from the -scanbus command.
#
cdrecord.exe -scanbus
#
# create an audio track with 4 seconds of silence 
dd if=/dev/zero bs=2352 count=300 of=audio.raw
#
# up the speed to support your burner. It is set to 1 for safety :)
# Not everyone has 16x burners.
#
cdrecord dev=1,0,0 speed=1 -multi -audio audio.raw
#
# I get 0,11702 from -msinfo. You may get 0,11700. 
# If so, fix the mkisofs command below.
#
cdrecord dev=1,0,0 -msinfo
#
mkisofs -r -C 0,11702 -o tmp.iso files
#
( cat IP.BIN ; dd if=tmp.iso bs=2048 skip=16 ) > data.raw
#
cdrecord dev=1,0,0 speed=1 -multi -xa1 data.raw
#
# done

