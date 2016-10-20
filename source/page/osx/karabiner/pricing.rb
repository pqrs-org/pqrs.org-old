#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Pricing < KarabinerBase
  def title
    case @language
    when :en
      'Pricing - ' + super()
    when :ja
      '支援 - ' + super()
    end
  end
end

PqrsUtil.make_page('/osx/karabiner/pricing.html', Pricing)
