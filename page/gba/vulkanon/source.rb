#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require 'vulkanon_base.rb'

class Source < VulkanonBase
end

PqrsUtil.make_page('/gba/vulkanon/source.html', Source)
