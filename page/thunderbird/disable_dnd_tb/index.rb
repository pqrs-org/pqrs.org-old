#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './disable_dnd_tb_base.rb'

class Index < DisableDndTbBase
end

PqrsUtil.make_page('/thunderbird/extensions/disable_dnd_tb/index.html', Index)
