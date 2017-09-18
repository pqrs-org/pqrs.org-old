#!/usr/bin/ruby
# -*- coding: utf-8 -*-

class DisableDndTbBase < PqrsBase
  def title
    'Disable DragAndDrop - Thunderbird Extension'
  end

  def navs_left_data
    [
      {
        :href => '/thunderbird/extensions/disable_dnd_tb/index.html',
        :name => 'Disable DragAndDrop',
      },
    ]
  end
end
