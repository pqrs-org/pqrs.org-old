#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Json < KarabinerBase
  def enable_prettify
    true
  end

  def title
    'karabiner.json Reference Manual - ' + super()
  end

  def tabs_definition
    [
      {
        :href => '#location',
        :name => 'File location',
      },
      {
        :name => 'syntax',
      },
      {
        :href => '#basic-syntax',
        :name => 'karabiner.json syntax',
      },
      {
        :href => '#complex_modifications-syntax',
        :name => 'complex_modifications syntax',
      },
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/json.html', Json)
