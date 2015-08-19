#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Donation < KarabinerBase
  def title
    case @language
    when :en
      'Donation - ' + super()
    when :ja
      '寄付 - ' + super()
    end
  end
end

PqrsUtil.make_page('/osx/karabiner/donation.html', Donation)
