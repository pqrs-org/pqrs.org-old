#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './nesterdc_base.rb'

class Index < NesterdcBase
end

PqrsUtil.make_page('/dreamcast/software/nesterdc/index.html', Index)
