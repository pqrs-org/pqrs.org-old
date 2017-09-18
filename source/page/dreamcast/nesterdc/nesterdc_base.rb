#!/usr/bin/ruby
# -*- coding: utf-8 -*-

class NesterdcBase < PqrsBase
  def title
    'NesterDC - Software for Dreamcast'
  end

  def navs_left_data
    [
      {
        :href => '/dreamcast/software/nesterdc/index.html',
        :name => 'NesterDC',
      },
      {
        :href => '/dreamcast/software/nesterdc/history.html',
        :name => 'Version History',
      },
    ]
  end
end
