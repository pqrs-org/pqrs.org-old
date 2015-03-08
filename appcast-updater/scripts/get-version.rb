#!/usr/bin/ruby -n

print $1 if /sparkle:version="(.+?)"/m =~ $stdin.read
