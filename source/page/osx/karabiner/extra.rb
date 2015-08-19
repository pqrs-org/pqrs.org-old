#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Extra < KarabinerBase
  def title
    case @language
    when :en
      'Additional Apps - ' + super()
    when :ja
      '追加アプリ - ' + super()
    end
  end
end

PqrsUtil.make_page('/osx/karabiner/extra.html', Extra)
