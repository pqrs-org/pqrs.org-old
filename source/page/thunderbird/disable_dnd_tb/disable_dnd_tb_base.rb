#!/usr/bin/ruby
# -*- coding: utf-8 -*-

class DisableDndTbBase < PqrsBase
  def title
    'Disable DragAndDrop - Thunderbird Extension'
  end

  def og_title
    'Disable DragAndDrop'
  end

  def og_description
    'Thunderbird add-on which disables drag and drop on the folder tree in order to prevent unintended folder movement.'
  end

  def og_image
    'https://pqrs.org/thunderbird/extensions/disable_dnd_tb/img/logo.png'
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
