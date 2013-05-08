#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './keyremap4macbook_base.rb'

class Pckeyboardhack < Keyremap4macbookBase
  def current_nav_path
    '/macosx/keyremap4macbook/pckeyboardhack.html'
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
       :href => '#uninstall',
       :name_l10n => {
         :en => 'Uninstall',
         :ja => 'アンインストール方法',
       }
     },
     {
       :href => '#faq',
       :name_l10n => {
         :en => 'Q&A',
         :ja => 'Q&A',
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
              :version => '9.0.0',
              :updated => '2013-01-13',
              :link => 'http://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-9.0.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>The preferences has been integrated into app.</li>
  <li>Some minor improvements.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>設定画面をアプリに統合しました。</li>
  <li>いくつかの細かい改善を行いました。</li>
</ul>
EOS
              },
            },
            {
              :version => '8.0.0',
              :updated => '2012-08-11',
              :link => 'http://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-8.0.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Update for OS X 10.8 Mountain Lion.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>OS X 10.8 Mountain Lionに対応しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '7.4.0',
              :updated => '2012-04-24',
              :link => 'http://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-7.4.0.dmg',
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
              :link => 'http://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-7.3.0.pkg.zip',
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
              :link => 'http://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-7.2.0.pkg.zip',
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
              :link => 'http://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-7.1.0.pkg.zip',
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
              :link => 'http://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-7.0.0.pkg.zip',
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
              :link => 'http://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-6.3.0.pkg.zip',
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
              :link => 'http://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-6.2.0.pkg.zip',
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
              :link => 'http://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-6.1.0.pkg.tar.gz',
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
              :link => 'http://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-6.0.0.pkg.tar.gz',
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
              :link => 'http://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-5.1.0.pkg.tar.gz',
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
              :link => 'http://pqrs.org/macosx/keyremap4macbook/files/PCKeyboardHack-5.0.0.pkg.tar.gz',
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

PqrsUtil.make_page('/macosx/keyremap4macbook/pckeyboardhack.html', Pckeyboardhack)
