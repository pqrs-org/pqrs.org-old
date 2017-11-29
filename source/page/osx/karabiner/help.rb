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
        :name => 'Allow button in System Preferences does not work',
      },
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/help.html', Help)
