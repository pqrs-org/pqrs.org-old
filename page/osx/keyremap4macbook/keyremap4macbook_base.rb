#!/usr/bin/ruby
# -*- coding: utf-8 -*-

class Keyremap4macbookBase < PqrsBase
  def title
    case @language
    when :en
      'KeyRemap4MacBook - Software for OS X'
    when :ja
      'KeyRemap4MacBook - OS X用のソフトウェア'
    end
  end

  def navs_left_data
    [
     {
       :href => '/macosx/keyremap4macbook/index.html',
       :name_l10n => {
         :en => 'KeyRemap4MacBook',
         :ja => 'KeyRemap4MacBook',
       },
     },
     {
       :name_l10n => {
         :en => 'Documents',
         :ja => 'ドキュメント',
       },
       :dropdown => {
         :items => [
                    {
                      :href => '/macosx/keyremap4macbook/document.html',
                      :name_l10n => {
                        :en => 'Manual',
                        :ja => 'マニュアル',
                      },
                    },
                    {
                      :href => '/macosx/keyremap4macbook/xml.html',
                      :name_l10n => {
                        :en => 'private.xml',
                        :ja => 'private.xml（英語）',
                      },
                    },
                    {
                      :href => '/macosx/keyremap4macbook/faq.html',
                      :name_l10n => {
                        :en => 'Q&A',
                        :ja => 'Q&A',
                      },
                    },
                    {
                      :href => '/macosx/keyremap4macbook/source.html',
                      :name_l10n => {
                        :en => 'Development',
                        :ja => '開発',
                      },
                    },
                    {
                      :href => '/macosx/keyremap4macbook/history.html',
                      :name_l10n => {
                        :en => 'Version History',
                        :ja => '更新履歴',
                      },
                    },
                    {
                      :href => '/macosx/keyremap4macbook/list.html',
                      :name_l10n => {
                        :en => 'List of prepared settings',
                        :ja => 'あらかじめ用意されている設定項目一覧',
                      },
                    },
                   ]
       },
     },
     {
       :name_l10n => {
         :en => 'Additional Apps',
         :ja => '追加アプリ',
       },
       :dropdown => {
         :items => [
                    {
                      :href => '/macosx/keyremap4macbook/pckeyboardhack.html',
                      :name_l10n => {
                        :en => 'PCKeyboardHack',
                        :ja => 'PCKeyboardHack',
                      },
                    },
                    {
                      :href => '/macosx/keyremap4macbook/noejectdelay.html',
                      :name_l10n => {
                        :en => 'NoEjectDelay',
                        :ja => 'NoEjectDelay',
                      },
                    },
                   ]
       }
     },
     {
       :href => '/macosx/keyremap4macbook/donation.html',
       :name_l10n => {
         :en => 'Donations',
         :ja => '寄付',
       },
     },
     {
       :href => '/macosx/keyremap4macbook/contact.html',
       :name_l10n => {
         :en => 'Contact',
         :ja => '連絡先',
       },
     },
    ]
  end

  def enable_jquery_collapse_js
    true
  end
end
