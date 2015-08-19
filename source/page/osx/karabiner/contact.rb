#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Contact < KarabinerBase
  def title
    case @language
    when :en
      'Contact - ' + super()
    when :ja
      '連絡先 - ' + super()
    end
  end
end

PqrsUtil.make_page('/osx/karabiner/contact.html', Contact)
