#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Gallery < KarabinerBase
  def tabs_definition
    [
      {
        :href => '#examples',
        :name_l10n => {
          :en => 'examples',
          :ja => 'examples',
        },
      },
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/gallery.html', Gallery)
