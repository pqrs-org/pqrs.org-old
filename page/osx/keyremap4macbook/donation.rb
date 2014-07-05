#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './keyremap4macbook_base.rb'

class Donation < Keyremap4macbookBase
end

PqrsUtil.make_page('/osx/karabiner/donation.html', Donation)
