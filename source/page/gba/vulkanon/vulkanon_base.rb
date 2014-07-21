#!/usr/bin/ruby
# -*- coding: utf-8 -*-

class VulkanonBase < PqrsBase
  def title
    case @language
    when :en
      'Vulkanon - Software for Gameboy Advance'
    when :ja
      'Vulkanon - ゲームボーイアドバンス用のソフトウェア'
    end
  end

  def navs_left_data
    [
     {
       :href => '/gba/vulkanon/index.html',
       :name_l10n => {
         :en => 'Vulkanon',
         :ja => 'Vulkanon',
       },
     },
     {
       :href => '/gba/vulkanon/manual.html',
       :name_l10n => {
         :en => 'Manual',
         :ja => 'マニュアル',
       },
     },
     {
       :href => '/gba/vulkanon/history.html',
       :name_l10n => {
         :en => 'Version History',
         :ja => '更新履歴',
       },
     },
     {
       :href => '/gba/vulkanon/source.html',
       :name_l10n => {
         :en => 'Development',
         :ja => '開発',
       },
     },
    ]
  end
end
