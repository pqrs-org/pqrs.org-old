#!/usr/bin/ruby
# -*- coding: utf-8 -*-

class DisableDndTbBase < PqrsBase
  def title
    case @language
    when :en
      'Disable DragAndDrop - Thunderbird Extension'
    when :ja
      'Disable DragAndDrop - Thunderbird拡張'
    end
  end

  def navs_left_data
    [
     {
       :href => '/thunderbird/extensions/disable_dnd_tb/index.html',
       :name_l10n => {
         :en => 'Disable DragAndDrop',
         :ja => 'Disable DragAndDrop',
       },
     },
     {
       :href => '/thunderbird/extensions/disable_dnd_tb/history.html',
       :name_l10n => {
         :en => 'Version History',
         :ja => '更新履歴',
       },
     },
    ]
  end
end
