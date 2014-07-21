#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './dcgnuboy_base.rb'

class Index < DcgnuboyBase
end

PqrsUtil.make_page('/dreamcast/software/dcgnuboy/index.html', Index)
