#!/usr/bin/ruby
# -*- coding: utf-8 -*-

class BulletgbaBase < PqrsBase
  def title
    case @language
    when :en
      'BulletGBA - Software for Gameboy Advance'
    when :ja
      'BulletGBA - ゲームボーイアドバンス用のソフトウェア'
    end
  end

  def navs_left_data
    [
     {
       :href => '/gba/bulletgba/index.html',
       :name_l10n => {
         :en => 'BulletGBA',
         :ja => 'BulletGBA',
       },
     },
     {
       :href => '/gba/bulletgba/manual.html',
       :name_l10n => {
         :en => 'Manual',
         :ja => 'マニュアル',
       },
     },
     {
       :href => '/gba/bulletgba/history.html',
       :name_l10n => {
         :en => 'Version History',
         :ja => '更新履歴',
       },
     },
     {
       :href => '/gba/bulletgba/source.html',
       :name_l10n => {
         :en => 'Development',
         :ja => '開発',
       },
     },
    ]
  end
end
