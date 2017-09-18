#!/usr/bin/ruby
# -*- coding: utf-8 -*-

class VulkanonBase < PqrsBase
  def title
    'Vulkanon - Software for Gameboy Advance'
  end

  def navs_left_data
    [
     {
       :href => '/gba/vulkanon/index.html',
       :name => 'Vulkanon',
     },
     {
       :href => '/gba/vulkanon/manual.html',
       :name => 'Manual',
     },
     {
       :href => '/gba/vulkanon/history.html',
       :name => 'Version History',
     },
     {
       :href => '/gba/vulkanon/source.html',
       :name => 'Development',
     },
    ]
  end
end
