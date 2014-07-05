#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Donation < KarabinerBase
end

PqrsUtil.make_page('/osx/karabiner/donation.html', Donation)
