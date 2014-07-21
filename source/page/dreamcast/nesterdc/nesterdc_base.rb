#!/usr/bin/ruby
# -*- coding: utf-8 -*-

class NesterdcBase < PqrsBase
  def title
    case @language
    when :en
      'NesterDC - Software for Dreamcast'
    when :ja
      'NesterDC - Dreamcast用のソフトウェア'
    end
  end

  def navs_left_data
    [
     {
       :href => '/dreamcast/software/nesterdc/index.html',
       :name_l10n => {
         :en => 'NesterDC',
         :ja => 'NesterDC',
       },
     },
     {
       :href => '/dreamcast/software/nesterdc/history.html',
       :name_l10n => {
         :en => 'Version History',
         :ja => '更新履歴',
       },
     },
    ]
  end
end
