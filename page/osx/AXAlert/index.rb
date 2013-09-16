#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'

class Index < PqrsBase
  def title
    case @language
    when :en
      'AXAlert - Software for OS X'
    when :ja
      'AXAlert - OS X用のソフトウェア'
    end
  end

  def navs_left_data
    [
     {
       :href => '/macosx/AXAlert/index.html',
       :name_l10n => {
         :en => 'AXAlert',
         :ja => 'AXAlert',
       },
     },
    ]
  end

  def tabs_definition
    [
     {
       :href => '#installation',
       :name_l10n => {
         :en => 'Installation',
         :ja => 'インストール方法',
       }
     },
     {
       :href => '#usage',
       :name_l10n => {
         :en => 'Usage',
         :ja => '使い方',
       }
     },
     {
       :href => '#quit',
       :name_l10n => {
         :en => 'How to quit',
         :ja => '終了する方法',
       }
     },
     {
       :href => '#uninstall',
       :name_l10n => {
         :en => 'Uninstall',
         :ja => 'アンインストール方法',
       }
     },
     {
       :href => '#development',
       :name_l10n => {
         :en => 'Development',
         :ja => '開発',
       }
     },
     {
       :href => '#history',
       :name_l10n => {
         :en => 'Version History',
         :ja => '更新履歴',
       }
     },
    ]
  end

  def histories
    data = [
            {
              :version => '1.1.0',
              :updated => '2013-09-16',
              :link => 'files/AXAlert-1.1.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>First release.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>最初のリリース。</li>
</ul>
EOS
              },
            },
           ]
    set_l10n_text(data)
  end
end

PqrsUtil.make_page('/macosx/AXAlert/index.html', Index)
