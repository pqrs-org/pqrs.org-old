#!/usr/bin/ruby

a = ARGV.sort_by {|e| e.split(/(\d+)/).map {|a| a =~ /\d+/ ? a.to_i : a }}
puts a[-1]
