#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class List < KarabinerBase
  def body_classes
    [
      {:class => 'with-page-top-fixed-alert'},
    ]
  end

  def title
    case @language
    when :en
      'List of prepared settings - ' + super()
    when :ja
      'あらかじめ用意されている設定項目一覧 - ' + super()
    end
  end
end

PqrsUtil.make_page('/osx/karabiner/list.html', List)
