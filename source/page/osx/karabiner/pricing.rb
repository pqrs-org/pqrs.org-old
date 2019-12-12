#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Pricing < KarabinerBase
  def og_description
    'Supporting this project'
  end

  def title
    'Pricing - ' + super()
  end
end

PqrsUtil.make_page('/osx/karabiner/pricing.html', Pricing)
