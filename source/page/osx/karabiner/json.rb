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
        :href => '#typical-complex_modifications-examples',
        :name => 'Typical complex_modifications examples',
      },
      {
        :name => 'data structure',
      },
      {
        :href => '#root-data-structure',
        :name => 'karabiner.json data structure',
      },
      {
        :name => 'complex_modifications',
      },
      {
        :href => '#complex_modifications-data-structure',
        :name => 'Data structure',
      },
      {
        :href => '#complex_modifications-manipulator-priority',
        :name => 'Manipulator priority',
      },
      {
        :href => '#complex_modifications-manipulator-definition',
        :name => 'Manipulator definition',
      },
      {
        :href => '#from-event-definition',
        :name => 'from event definition',
      },
      {
        :href => '#from-event-definition-modifiers',
        :name => 'Modifiers in from event definition',
      },
      {
        :href => '#from-event-definition-examples',
        :name => 'Examples',
      },
      {
        :href => '#from-event-definition-modifiers-list',
        :name => 'The list of modifiers'
      },
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/json.html', Json)
