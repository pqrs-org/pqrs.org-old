#!/usr/bin/ruby -n

print $1 if /^<ul>(.*?)^<\/ul>/m =~ $stdin.read
