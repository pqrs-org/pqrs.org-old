#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require 'digest/sha1'

class PqrsUtil
  def self.tidy(htmlfilepath)
    unless system("tidy -qe --drop-empty-elements no #{htmlfilepath}") then
      print "\n\n\n"
      return false
    end
    return true
  end

  def self.update_file_if_needed(tmpfilepath, targetfilepath)
    if (! FileTest.exist?(targetfilepath)) or (IO.read(tmpfilepath) != IO.read(targetfilepath)) then
      if /\.html\...$/ =~ targetfilepath then
        unless self.tidy(tmpfilepath) then
          File.unlink(tmpfilepath)
          exit 1
        end
      end
      File.rename(tmpfilepath, targetfilepath)
      File.chmod(0644, targetfilepath)
    else
      File.unlink(tmpfilepath)
    end
  end

  def self.put_file_if_needed(filepath, text)
    tmpfilepath = "/tmp/" + Digest::SHA1.hexdigest(filepath)

    open(tmpfilepath, 'w') do |f|
      f.puts text
    end
    self.update_file_if_needed(tmpfilepath, filepath)
  end

  def self.render(path, mustache_class, language)
    body = mustache_class.new
    body.path = path
    body.language = language

    layout = mustache_class.new
    layout.path = path
    layout.language = language
    layout.body = body.render
    layout.template_file = $template_directory + '/pqrs_layout.mustache'
    layout.render
  end

  def self.make_page(destination_file, mustache_class)
    [:en, :ja].each do |language|
      self.put_file_if_needed($destination_directory + destination_file + '.' + language.to_s,
                              self.render(destination_file, mustache_class, language))
    end
  end
end
