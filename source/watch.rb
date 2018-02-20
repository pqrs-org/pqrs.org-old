#!/usr/bin/ruby

require 'rubygems'
require 'file-monitor'

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
    system('make -C /opt/pqrs.org/source')
  end
end
