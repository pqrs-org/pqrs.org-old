#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require 'bulletgba_base.rb'

class Manual < BulletgbaBase
end

PqrsUtil.make_page('/gba/bulletgba/manual.html', Manual)
