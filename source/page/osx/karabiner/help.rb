#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Help < KarabinerBase
  def title
    'Help - ' + super()
  end

  def tabs_definition
    [
      {
        :name => 'troubleshooting',
      },
      {
        :href => '#kext-allow-button-does-not-work',
        :name => 'Trouble: Allow button in System Preferences does not work.',
      },
      {
        :href => '#touch-bar-function-keys',
        :name => 'Trouble: Touch bar does not change to f1-f12 when I press the fn key.',
      },
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/help.html', Help)
