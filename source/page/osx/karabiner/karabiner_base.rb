#!/usr/bin/ruby
# -*- coding: utf-8 -*-

class KarabinerBase < PqrsBase
  def title
    case @language
    when :en
      'Karabiner - Software for OS X'
    when :ja
      'Karabiner - OS X用のソフトウェア'
    end
  end

  def navs_left_data
    [
      {
        :href => '/osx/karabiner/index.html',
        :name_l10n => {
          :en => 'Karabiner',
          :ja => 'Karabiner',
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
              :href => '/osx/karabiner/document.html',
              :name_l10n => {
                :en => 'Manual',
                :ja => 'マニュアル',
              },
            },
            {
              :href => '/osx/karabiner/gallery.html',
              :name_l10n => {
                :en => 'Gallery',
                :ja => '設定の一例',
              },
            },
            {
              :href => '/osx/karabiner/xml.html',
              :name_l10n => {
                :en => 'private.xml',
                :ja => 'private.xml（英語）',
              },
            },
            {
              :href => '/osx/karabiner/faq.html',
              :name_l10n => {
                :en => 'Q&A',
                :ja => 'Q&A',
              },
            },
            {
              :href => '/osx/karabiner/source.html',
              :name_l10n => {
                :en => 'License and Source Code',
                :ja => 'ライセンス・ソースコード',
              },
            },
            {
              :href => '/osx/karabiner/history.html',
              :name_l10n => {
                :en => 'Version History',
                :ja => '更新履歴',
              },
            },
            {
              :href => '/osx/karabiner/list.html',
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
          :en => 'Archives',
          :ja => '昔のページ',
        },
        :dropdown => {
          :items => [
            {
              :href => '/osx/karabiner/document_v10.html',
              :name_l10n => {
                :en => 'Manual for Karabiner-10.22.0',
                :ja => 'マニュアル（Karabiner-10.22.0向け）',
              },
            },
          ],
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
              :href => '/osx/karabiner/seil.html',
              :name_l10n => {
                :en => 'Seil',
                :ja => 'Seil',
              },
            },
            {
              :href => '/osx/karabiner/noejectdelay.html',
              :name_l10n => {
                :en => 'NoEjectDelay',
                :ja => 'NoEjectDelay',
              },
            },
          ]
        }
      },
      {
        :href => '/osx/karabiner/pricing.html',
        :name_l10n => {
          :en => 'Pricing',
          :ja => '支援',
        },
      },
      {
        :href => '/osx/karabiner/contact.html',
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
