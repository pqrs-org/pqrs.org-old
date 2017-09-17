#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Document < KarabinerBase
  def current_nav_path
    '/osx/karabiner/document.html'
  end

  def enable_prettify
    true
  end

  def title
    case @language
    when :en
      'Manual - ' + super()
    when :ja
      'マニュアル - ' + super()
    end
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
        :href => '#configuration',
        :name_l10n => {
          :en => 'Configuration',
          :ja => 'Configuration',
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
        :href => '#event-modification-chaining',
        :name_l10n => {
          :en => 'Input event modification chaining',
          :ja => '入力イベントの変更の順番',
        }
      },
      {
        :name_l10n => {
          :en => 'Misc.',
          :ja => 'その他',
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
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/document.html', Document)
