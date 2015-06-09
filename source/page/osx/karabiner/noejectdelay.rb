#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Noejectdelay < KarabinerBase
  def current_nav_path
    '/osx/karabiner/noejectdelay.html'
  end

  def title
    case @language
    when :en
      'NoEjectDelay - Software for OS X'
    when :ja
      'NoEjectDelay - OS X用のソフトウェア'
    end
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
       :href => '#show-version',
       :name_l10n => {
         :en => 'How to know the installed version',
         :ja => 'インストール済みのバージョンを知る方法',
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
              :version => '6.1.0',
              :updated => '2015-06-09',
              :link => 'files/NoEjectDelay-6.1.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>OS X 10.11 has been supported.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>OS X 10.11をサポートしました。</li>
</ul>
EOS
              },
            },
            {
              :version => '6.0.0',
              :updated => '2014-11-01',
              :link => 'files/NoEjectDelay-6.0.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>OS X 10.10 has been supported.</li>
  <li>OS X 10.8 support has been dropped.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>OS X 10.10をサポートしました。</li>
  <li>OS X 10.8をサポート対象から外しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '5.4.0',
              :updated => '2014-02-27',
              :link => 'files/NoEjectDelay-5.4.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>
    Fixed an issue:
    <ul>
      <li>NoEjectDelay causes kernel panic on OS X 10.9.2.</li>
    </ul>
  </li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>
    下記の問題を修正しました:
    <ul>
      <li>OS X 10.9.2でカーネルパニックを引き起こします。</li>
    </ul>
  </li>
</ul>
EOS
              },
            },
            {
              :version => '5.3.0',
              :updated => '2013-12-01',
              :link => 'files/NoEjectDelay-5.3.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>NoEjectDelay no longer requires system restart at installing or upgrading.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>NoEjectDelayのインストールやアップグレード時にシステムの再起動が不要になりました。</li>
</ul>
EOS
              },
            },
            {
              :version => '5.2.0',
              :updated => '2013-11-10',
              :link => 'files/NoEjectDelay-5.2.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Signed kext with Developer ID.</li>
  <li>Updated installer.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>kextをDeveloper IDで署名しました。</li>
  <li>インストーラを更新しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '5.0.0',
              :updated => '2013-10-20',
              :link => 'files/NoEjectDelay-5.0.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Supported OS X 10.9.</li>
  <li>Signed with Developer ID.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>OS X 10.9に対応しました。</li>
  <li>Developer IDで署名しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '4.1.0',
              :updated => '2013-01-13',
              :link => 'files/NoEjectDelay-4.1.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Fixed a minor issue in the installer.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>インストーラのささいな問題を修正しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '4.0.0',
              :updated => '2012-08-05',
              :link => 'files/NoEjectDelay-4.0.0.dmg',
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
              :version => '3.6.0',
              :updated => '2012-08-05',
              :link => 'files/NoEjectDelay-3.6.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Added "Disable F12Eject" feature.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>F12Ejectを無効にする機能を追加しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '3.4.0',
              :updated => '2012-04-24',
              :link => 'files/NoEjectDelay-3.4.0.dmg',
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
              :version => '3.3.0',
              :updated => '2012-02-21',
              :link => 'files/NoEjectDelay-3.3.0.pkg.zip',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Updated source code for Xcode 4.3.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>ソースコードについてXcode 4.3対応をしました。</li>
</ul>
EOS
              },
            },
            {
              :version => '3.2.0',
              :updated => '2011-10-26',
              :link => 'files/NoEjectDelay-3.2.0.pkg.zip',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Resolved a minor installer issue.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>インストーラの小さな問題を修正しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '3.1.0',
              :updated => '2011-08-16',
              :link => 'files/NoEjectDelay-3.1.0.pkg.zip',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Fixed a minor issue on Mac OS X 10.7.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>Mac OS X 10.7での小さな問題を修正しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '3.0.0',
              :updated => '2011-07-23',
              :link => 'files/NoEjectDelay-3.0.0.pkg.zip',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Update for Mac OS X 10.7 Lion.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>Mac OS X 10.7 Lionに対応しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '2.1.0',
              :updated => '2010-05-11',
              :link => 'files/NoEjectDelay-2.1.0.pkg.zip',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Fixed a minor bug.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>細かいバグ修正を行ないました。</li>
</ul>
EOS
              },
            },
            {
              :version => '2.0.0',
              :updated => '2009-09-13',
              :link => 'files/NoEjectDelay-2.0.0.pkg.zip',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Stable release for Snow Leopard.</li>
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
              :version => '1.1.0',
              :updated => '2008-05-26',
              :link => 'files/NoEjectDelay-1.1.0.pkg.tar.gz',
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
              :version => '1.0.0',
              :updated => '2008-05-07',
              :link => 'files/NoEjectDelay-1.0.0.pkg.tar.gz',
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

PqrsUtil.make_page('/osx/karabiner/noejectdelay.html', Noejectdelay)
