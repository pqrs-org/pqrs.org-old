#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './keyremap4macbook_base.rb'

class Document < Keyremap4macbookBase
  def current_nav_path
    '/macosx/keyremap4macbook/document.html'
  end

  def enable_prettify
    true
  end

  def tabs_definition
    [
     {
       :href => '#usage',
       :name_l10n => {
         :en => 'Usage',
         :ja => '使い方',
       }
     },
     {
       :href => '#keyrepeat',
       :name_l10n => {
         :en => 'Change key repeat rate',
         :ja => 'キーリピート速度の変更',
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
       :href => '#check-for-updates',
       :name_l10n => {
         :en => 'Check for updates',
         :ja => '最新版への更新',
       }
     },
     {
       :href => '#axnotifier',
       :name_l10n => {
         :en => 'AXNotifier',
         :ja => 'AXNotifier',
       }
     },
     {
       :href => '#eventviewer',
       :name_l10n => {
         :en => 'Eventviewer',
         :ja => 'イベントビューア',
       }
     },
     {
       :href => '#privatexml',
       :name_l10n => {
         :en => 'How to add your own settings',
         :ja => '設定の追加',
       }
     },
     {
       :href => '#implicit',
       :name_l10n => {
         :en => 'Implicit behavior',
         :ja => '暗黙の挙動',
       }
     },
     {
       :name_l10n => {
         :en => 'Misc.',
         :ja => 'その他',
       }
     },
     {
       :href => '#multitouchextension',
       :name_l10n => {
         :en => 'Multi-touch extension',
         :ja => 'マルチタッチ拡張',
       }
     },
     {
       :href => '#profiles',
       :name_l10n => {
         :en => 'Multiple profiles',
         :ja => '複数の設定の使い分け',
       }
     },
     {
       :href => '#commandlineinterface',
       :name_l10n => {
         :en => 'Command line interface',
         :ja => 'コマンドラインインターフェース',
       }
     },
     {
       :href => '#preferences',
       :name_l10n => {
         :en => 'The location of the configuration file',
         :ja => '設定ファイルの場所',
       }
     },
     {
       :href => '#debugmode',
       :name_l10n => {
         :en => 'debug mode',
         :ja => 'デバッグモード',
       }
     },
    ]
  end
end

PqrsUtil.make_page('/macosx/keyremap4macbook/document.html', Document)
