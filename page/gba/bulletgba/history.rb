#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './bulletgba_base.rb'

class History < BulletgbaBase
  def histories
    data = [
            {
              :version => '5.0',
              :updated => '2007-05-21',
              :body_l10n => {
                :en => <<EOS,
<ul>
<li>Added sound composed by <a href="http://www.nullsleep.com/" target="_blank">Nullsleep</a>.</li>
<li>Improved graphic resources.</li>
<li>Adjusted the level design of Shooting Mode.</li>
<li>Improved BulletML handling.</li>
<li>Added some BulletML.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
<li><a href="http://www.nullsleep.com/" target="_blank">Nullsleep</a>氏によるサウンドを追加しました。
<li>ドット絵を改良しました。</li>
<li>シューティングモードのステージを改良しました。</li>
<li>BulletMLの取り扱いを改良しました。</li>
<li>いくつかのBulletMLを追加しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '4.0',
              :updated => '2006-05-29',
              :body_l10n => {
                :en => <<EOS,
<ul>
<li>Added "Replay" feature. You can record your game play into SRAM. ("Challenge &amp; Shooting Mode")</li>
<li>Added demo replay data.</li>
<li>Added Shooting Mode Level 4.</li>
<li>Improved font graphic.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
<li>リプレイ機能を追加しました。 チャレンジモード、シューティングモードのリプレイをSRAMに保存できます。</li>
<li>デモのリプレイデータを追加しました。</li>
<li>Shooting Level 4を追加しました。</li>
<li>フォントを改良しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '3.0',
              :updated => '2006-05-02',
              :body_l10n => {
                :en => <<EOS,
<ul>
<li>Added Shooting Mode.</li>
<li>Improved graphic resources.</li>
<li>Improved BulletML handling.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
<li>シューティングモードを追加しました。</li>
<li>ドット絵を改良しました。</li>
<li>BulletMLの取り扱いを改良しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '2.0',
              :updated => '2006-04-08',
              :body_l10n => {
                :en => <<EOS,
<ul>
<li>Improved sprite handling. (less flicker, less vanishing of sprite.)</li>
<li>Added slow mode. (a.k.a. kakusei in Espgaluda.) You can toggle slow mode by press START or SELECT.</li>
<li>Added Challenge Mode.</li>
<li>Added BulletsMorph.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
<li>描写エンジンを改良しました。 ちらつきやスプライト欠けが軽減されています。</li>
<li>弾速が遅くなるモード（エスプガルーダの覚聖モード）を追加しました。STARTもしくはSELECTボタンで切り替えます。</li>
<li>チャレンジモードを追加しました。</li>
<li>BulletsMorphモードを追加しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '1.1',
              :updated => '2006-03-09',
              :body_l10n => {
                :en => <<EOS,
<ul>
<li>Added some BulletML.</li>
<li>Optimized game engine.</li>
<li>Some minor improvements.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
<li>ゲームエンジンの最適化を行いました。</li>
<li>いくつかのBulletMLを追加しました。</li>
<li>その他、細かい修正を行いました。</li>
</ul>
EOS
              },
            },
            {
              :version => '1.0',
              :updated => '2006-02-27',
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

PqrsUtil.make_page('/gba/bulletgba/history.html', History)
