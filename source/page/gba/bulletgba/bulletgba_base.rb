#!/usr/bin/ruby
# -*- coding: utf-8 -*-

class BulletgbaBase < PqrsBase
  def title
    'BulletGBA - Software for Gameboy Advance'
  end

  def navs_left_data
    [
      {
        :href => '/gba/bulletgba/index.html',
        :name => 'BulletGBA',
      },
      {
        :href => '/gba/bulletgba/manual.html',
        :name => 'Manual',
      },
      {
        :href => '/gba/bulletgba/history.html',
        :name => 'Version History',
      },
      {
        :href => '/gba/bulletgba/source.html',
        :name => 'Development',
      },
    ]
  end
end
