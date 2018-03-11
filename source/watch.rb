#!/usr/bin/ruby

require 'rubygems'
require 'file-monitor'
require 'webrick'

Thread.new do
  WEBrick::HTTPServer.new(
    :DocumentRoot => "/opt/pqrs.org/webroot",
    :Port => 8000
  ).start
end

def update_all
  system('make -C /opt/pqrs.org/source')
  puts
  puts '----------------------------------------'
  puts '--------------- UPDATED ----------------'
  puts '----------------------------------------'
  puts
  STDOUT.flush
end

update_all()

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
    disallow /webroot\/.+\.html$/
  end

  exec do |events|
    needs_all = true
    if events.size() == 1
      path = events[0].absolute_name
      if /^(.+)\.mustache$/ =~ path then
        rb_path = $1 + '.rb'
        if File.exists?(rb_path)
          needs_all = false
          system("cd #{File.dirname(rb_path)} && ruby #{rb_path}")

          puts 'run ' + rb_path
          STDOUT.flush
        end
      end
    end

    if needs_all
      update_all()
    end
  end
end
