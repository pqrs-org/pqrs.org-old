#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './keyremap4macbook_base.rb'

class Index < Keyremap4macbookBase
end

PqrsUtil.make_page('/osx/karabiner/index.html', Index)
