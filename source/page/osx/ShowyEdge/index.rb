#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'

class Index < PqrsBase
  def title
    case @language
    when :en
      'ShowyEdge - Software for OS X'
    when :ja
      'ShowyEdge - OS X用のソフトウェア'
    end
  end

  def navs_left_data
    [
     {
       :href => '/osx/ShowyEdge/index.html',
       :name_l10n => {
         :en => 'ShowyEdge',
         :ja => 'ShowyEdge',
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
              :version => '3.2.0',
              :updated => '2017-03-23',
              :link => 'files/ShowyEdge-3.2.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      An opacity slider has been added to color picker.
    </div>
  </div>

</div>
EOS
                :ja => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      色の透過率を設定できるようにしました。
    </div>
  </div>

</div>
EOS
              },
            },
            {
              :version => '3.1.0',
              :updated => '2016-04-17',
              :link => 'files/ShowyEdge-3.1.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-new">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      "Colors layout orientation" setting has been added.
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      The behavior of starting ShowyEdge on system startup has been improved.
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      The preferences window UI has been improved.
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Memory usage has been reduced.
    </div>
  </div>

</div>
EOS
                :ja => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-new">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      設定に「Colors layout orientation」を追加しました。
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      ログイン後のShowyEdgeの自動起動の挙動を改善しました。
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      設定画面のUIを改善しました。
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      メモリ使用量を削減しました。
    </div>
  </div>

</div>
EOS
              },
            },
            {
              :version => '3.0.0',
              :updated => '2015-12-03',
              :link => 'files/ShowyEdge-3.0.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-important">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      OS X 10.8 support has been dropped.
    </div>
  </div>

  <div class="update-description-item update-description-item-important">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      OS X 10.7 support has been dropped.
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      ShowyEdge Preferences became resizable.
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Sparkle Framework has been updated.
    </div>
  </div>

</div>
EOS
                :ja => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-important">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      OS X 10.8をサポート外としました。
    </div>
  </div>

  <div class="update-description-item update-description-item-important">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      OS X 10.7をサポート外としました。
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      設定画面がリサイズ可能になりました。
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Sparkleフレームワークを更新しました。
    </div>
  </div>

</div>
EOS
              },
            },
            {
              :version => '2.2.0',
              :updated => '2015-08-30',
              :link => 'files/ShowyEdge-2.2.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Close button has been added.</li>
  <li>"Check for updates" (Sparkle) has been updated.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>「Check for updates（Sparkle）」を更新しました。</li>
  <li>Closeボタンを追加しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '2.1.0',
              :updated => '2014-12-02',
              :link => 'files/ShowyEdge-2.1.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Multiple displays support has been improved. The indicator is shown in the all screen.</li>
  <li>Quit button has been added.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>複数のディスプレイの扱いを改善しました。各ディスプレイにカラーバーが表示されます。</li>
  <li>Quitボタンを追加しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '2.0.0',
              :updated => '2014-08-24',
              :link => 'files/ShowyEdge-2.0.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>"Check for updates" (Sparkle) has been updated.</li>
  <li>The minimum OS version requirement has been changed. (OS X 10.6 -> OS X 10.7)</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>「Check for updates（Sparkle）」を更新しました。</li>
  <li>サポートOSを「OS X 10.7以降」に変更しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '1.8.0',
              :updated => '2014-03-13',
              :link => 'files/ShowyEdge-1.8.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Multiple displays have been supported.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>マルチディスプレイをサポートしました。</li>
</ul>
EOS
              },
            },
            {
              :version => '1.7.0',
              :updated => '2013-10-18',
              :link => 'files/ShowyEdge-1.7.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Added "Indicator opacity" configuration.</li>
  <li>Signed with Developer ID..</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>設定に「Indicator opacity」を追加しました。</li>
  <li>Developer IDで署名しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '1.6.0',
              :updated => '2013-10-13',
              :link => 'files/ShowyEdge-1.6.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Added "Use custom frame" configuration.</li>
  <li>Added "Show icon in Dock" configuration.</li>
  <li>Fixed minor issues.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>設定に「Use custom frame」を追加しました。</li>
  <li>設定に「Show icon in Dock」を追加しました。</li>
  <li>いくつかの細かい改善を行いました。</li>
</ul>
EOS
              },
            },
            {
              :version => '1.4.0',
              :updated => '2013-06-16',
              :link => 'files/ShowyEdge-1.4.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Revised file permissions.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>ファイルのパーミッションを修正。</li>
</ul>
EOS
              },
            },
            {
              :version => '1.3.0',
              :updated => '2013-06-14',
              :link => 'files/ShowyEdge-1.3.0.dmg',
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

PqrsUtil.make_page('/osx/ShowyEdge/index.html', Index)
