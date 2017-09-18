#!/usr/bin/ruby
# -*- coding: utf-8 -*-

class DcgnuboyBase < PqrsBase
  def title
    'dcgnuboy - Software for Dreamcast'
  end

  def navs_left_data
    [
      {
        :href => '/dreamcast/software/dcgnuboy/index.html',
        :name => 'dcgnuboy',
      },
      {
        :href => '/dreamcast/software/dcgnuboy/history.html',
        :name => 'Version History',
      },
    ]
  end
end
