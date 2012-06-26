#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require 'keyremap4macbook_base.rb'

class Pckeyboardhack < Keyremap4macbookBase
  def current_nav_path
    '/macosx/keyremap4macbook/pckeyboardhack.html'
  end

  def tabs_definition
    [
     {
       :tab => 'howtouse',
       :href => '/macosx/keyremap4macbook/pckeyboardhack.html',
       :name_l10n => {
         :en => 'How to use',
         :ja => '使い方',
       }
     },
     {
       :tab => 'uninstall',
       :href => '/macosx/keyremap4macbook/pckeyboardhack-uninstall.html',
       :name_l10n => {
         :en => 'How to uninstall',
         :ja => 'アンインストール方法',
       }
     },
     {
       :tab => 'history',
       :href => '/macosx/keyremap4macbook/pckeyboardhack-history.html',
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
              :version => '7.4.0',
              :updated => '2012-04-24',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Changed package archive format to dmg from zip.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>パッケージの形式をzipからdmgに変更しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '7.3.0',
              :updated => '2012-02-21',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Added a remappable key: International Keys, Lang Keys and keys on Sun Type6 Keyboard.</li>
  <li>Updated source code for Xcode 4.3.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>変更可能なキーを追加しました。（Internationalキー、Langキー, Sun Type6 Keyboardのキー）</li>
  <li>ソースコードについてXcode 4.3対応をしました。</li>
</ul>
EOS
              },
            },
            {
              :version => '7.2.0',
              :updated => '2011-10-26',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Added a remappable key: ADB Keyboard Power Key.</li>
  <li>Resolved a minor installer issue.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>変更可能なキーを追加しました。（ADBキーボードのパワーキー）</li>
  <li>インストーラの小さな問題を修正しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '7.1.0',
              :updated => '2011-08-16',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Added remappable keys: Command, Control, Option, Shift, Escape, Delete, Return, Keypad Enter.</li>
  <li>Added software update feature.</li>
  <li>Fixed a minor issue on Mac OS X 10.7.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>変更可能なキーを追加しました。(Command、Control、Option、Shift、Escape、Delete、Return、Keypad Enter)</li>
  <li>ソフトウェアアップデート機能を追加しました。</li>
  <li>Mac OS X 10.7での小さな問題を修正しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '7.0.0',
              :updated => '2011-07-23',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Update for Mac OS X 10.7 Lion.</li>
  <li>Removed "Change Control Key" feature. Use KeyRemap4MacBook to do it.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>Mac OS X 10.7 Lionに対応しました。</li>
  <li>Controlキーの変更機能について削除しました。Controlキーの変更についてはKeyRemap4MacBookを使ってください。</li>
</ul>
EOS
              },
            },
            {
              :version => '6.3.0',
              :updated => '2010-05-11',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Improved a log message.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>ログメッセージを改善。</li>
</ul>
EOS
              },
            },
            {
              :version => '6.2.0',
              :updated => '2010-01-20',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Improved the Preference Pane.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>設定画面を改善。</li>
</ul>
EOS
              },
            },
            {
              :version => '6.1.0',
              :updated => '2010-01-05',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Supported Fast User Switching.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>Fast User Switchingに対応しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '6.0.0',
              :updated => '2009-09-13',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Stable release for Snow Leopard..</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>Snow Leopard用の安定版です。</li>
</ul>
EOS
              },
            },
            {
              :version => '5.1.0',
              :updated => '2008-05-26',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Minor Improvements.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>細かい改善。</li>
</ul>
EOS
              },
            },
            {
              :version => '5.0.0',
              :updated => '2008-05-07',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Minor Improvements.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>細かい改善。</li>
</ul>
EOS
              },
            },
            {
              :version => '2.3.0',
              :updated => '2007-12-15',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Initial release.</li>
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

Pckeyboardhack.new.tabs_definition.each do |t|
  eval <<-EOS
  class Pckeyboardhack_#{t[:tab]} < Pckeyboardhack
    @template_file = File.dirname(__FILE__) + '/pckeyboardhack.mustache'
    def current_tab_#{t[:tab]}
      true
    end
  end
  EOS
  eval "PqrsUtil.make_page('#{t[:href]}', Pckeyboardhack_#{t[:tab]})"
end
