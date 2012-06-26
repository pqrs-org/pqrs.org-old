#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require 'bulletgba_base.rb'

class Source < BulletgbaBase
  def enable_prettify
    true
  end
end

PqrsUtil.make_page('/gba/bulletgba/source.html', Source)
