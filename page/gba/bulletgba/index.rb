#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require 'bulletgba_base.rb'

class Index < BulletgbaBase
end

PqrsUtil.make_page('/gba/bulletgba/index.html', Index)
