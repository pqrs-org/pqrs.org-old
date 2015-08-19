#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Source < KarabinerBase
  def title
    case @language
    when :en
      'License & Repository - ' + super()
    when :ja
      'ライセンス・リポジトリ - ' + super()
    end
  end
end

PqrsUtil.make_page('/osx/karabiner/source.html', Source)
