#!/usr/bin/ruby

require 'rubygems'
require 'file-monitor'

def update
  system('make -C /opt/pqrs.org/source')
  puts
  puts '----------------------------------------'
  puts '--------------- UPDATED ----------------'
  puts '----------------------------------------'
  puts
  STDOUT.flush
end

update()

FileMonitor.watch File.dirname(File.dirname(__FILE__)) do
  dirs do
    disallow /\/\./
    disallow /source\/css\/output/
    disallow /webroot\/assets/
    disallow /appcast-updater/
  end

  files do
    allow /source\/|webroot\/.+\.(png|jpg)/
    disallow /\/\.|\#$/
  end

  exec do |events|
    update()
  end
end
