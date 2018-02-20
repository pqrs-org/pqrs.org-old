#!/usr/bin/ruby

require 'rubygems'
require 'file-monitor'

FileMonitor.watch File.dirname(File.dirname(__FILE__)) do
  dirs do
    disallow /\/\.git$/
    disallow /source\/css\/output/
  end

  files do
    allow /source\/|webroot\/.+\.(png|jpg)/
    disallow /\/\./
  end

  exec do |events|
    system('make -C /opt/pqrs.org/source')
  end
end
