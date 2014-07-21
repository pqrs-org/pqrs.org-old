#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class List < KarabinerBase
end

PqrsUtil.make_page('/osx/karabiner/list.html', List)
