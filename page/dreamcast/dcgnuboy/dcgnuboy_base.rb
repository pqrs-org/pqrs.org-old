#!/usr/bin/ruby
# -*- coding: utf-8 -*-

class DcgnuboyBase < PqrsBase
  def title
    case @language
    when :en
      'dcgnuboy - Software for Dreamcast'
    when :ja
      'dcgnuboy - Dreamcast用のソフトウェア'
    end
  end

  def navs_left_data
    [
     {
       :href => '/dreamcast/software/dcgnuboy/index.html',
       :name_l10n => {
         :en => 'dcgnuboy',
         :ja => 'dcgnuboy',
       },
     },
     {
       :href => '/dreamcast/software/dcgnuboy/history.html',
       :name_l10n => {
         :en => 'Version History',
         :ja => '更新履歴',
       },
     },
    ]
  end
end
