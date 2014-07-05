#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../classes/bootstrap.rb'

class Toppage < PqrsBase
  def title
    'pqrs.org'
  end

  def sections
    data = [
            # ============================================================
            {
              :id => 'os-x',
              :name => 'OS X',
              :rows => [
                         {
                           :name => 'KeyRemap4MacBook',
                           :link => '/osx/karabiner/index.html.' + @language.to_s,
                           :icon => '/img/icon/osx/keyremap4macbook-32.png',
                           :body_l10n => {
                             :en => <<EOS,
<p>A powerful and stable keyboard customizer for OS X.</p>
EOS
                             :ja => <<EOS,
<p>高機能で安定性も極めて高いOS X用のキーボードカスタマイズツール。</p>
EOS
                           },
                         },

                         {
                           :name => 'ShowyEdge',
                           :link => '/osx/ShowyEdge/index.html.' + @language.to_s,
                           :icon => '/img/icon/osx/ShowyEdge-32.png',
                           :body_l10n => {
                             :en => <<EOS,
<p>An Indicator of the current input source which has a very high visibility for OS X.</p>
EOS
                             :ja => <<EOS,
<p>非常に高い視認性を持つ、OS X用の現在の入力ソースのインジケータ。</p>
EOS
                           },
                        },
                       ]
            },
            # ============================================================
            {
              :id => 'thunderbird',
              :name => 'Thunderbird',
              :rows => [
                         {
                           :name => 'Disable DragAndDrop',
                           :link => '/thunderbird/extensions/disable_dnd_tb/index.html.' + @language.to_s,
                           :icon => '/img/icon/thunderbird/default-32.png',
                           :body_l10n => {
                             :en => <<EOS,
<p>
A Thunderbird extension which disables drag and drop in the folder pane.
This extension prevents unintended folder movement.
</p>
EOS
                             :ja => <<EOS,
<p>
フォルダペインでのドラッグを禁止するThunderbird拡張。
意図せぬドラッグアンドドロップによるフォルダ移動を防ぎます。
</p>
EOS
                           },
                         },
                        ]
            },
            # ============================================================
            {
              :id => 'web-api',
              :name => 'Web API',
              :rows => [
                         {
                           :name => 'ImageLnk',
                           :link => 'http://imagelnk.pqrs.org/',
                           :icon => '/img/icon/web/imagelnk-32.png',
                           :body_l10n => {
                             :en => <<EOS,
<p>Web API to get a direct link of images from image pages.</p>
EOS
                             :ja => <<EOS,
<p>画像ページから画像の直接リンクを取得するWeb API。</p>
EOS
                           },
                         },
                        ]
            },
            # ============================================================
            {
              :id => 'game-boy-advance',
              :name => 'Game Boy Advance',
              :rows => [
                         {
                           :name => 'Vulkanon',
                           :link => '/gba/vulkanon/index.html.' + @language.to_s,
                           :icon => '/img/icon/gba/vulkanon-32.png',
                           :body_l10n => {
                             :en => <<EOS,
<p>A homebrew bullet hell shooter for Gameboy Advance.</p>
EOS
                             :ja => <<EOS,
<p>ゲームボーイアドバンス用の弾幕シューティングゲーム。</p>
EOS
                           },
                         },
                         {
                           :name => 'BulletGBA',
                           :link => '/gba/bulletgba/index.html.' + @language.to_s,
                           :icon => '/img/icon/gba/bulletgba-32.png',
                           :body_l10n => {
                             :en => <<EOS,
<p>A homebrew bullet hell simulator for Gameboy Advance.</p>
EOS
                             :ja => <<EOS,
<p>ゲームボーイアドバンス用の弾幕シミュレーター。</p>
EOS
                           },
                         },
                        ]
            },
            # ============================================================
            {
              :id => 'dreamcast',
              :name => 'Dreamcast',
              :rows => [
                         {
                           :name => 'NesterDC',
                           :link => '/dreamcast/software/nesterdc/index.html.' + @language.to_s,
                           :body_l10n => {
                             :en => <<EOS,
<p>NES emulator for Dreamcast.</p>
EOS
                             :ja => <<EOS,
<p>Dreamcast用のファミコンエミュレータ。</p>
EOS
                           },
                         },
                         {
                           :name => 'dcgnuboy',
                           :link => '/dreamcast/software/dcgnuboy/index.html.' + @language.to_s,
                           :body_l10n => {
                             :en => <<EOS,
<p>Gameboy &amp; Gameboy Color emulator for Dreamcast.</p>
EOS
                             :ja => <<EOS,
<p>Dreamcast用のゲームボーイ＆ゲームボーイカラーエミュレータ。</p>
EOS
                           },
                         },
                        ]
            },
           ]
    data.each do |d|
      d[:rows] = d[:rows].each_slice(2).collect do |items| { :items => items } end
    end

    set_l10n_text(data)
  end
end

PqrsUtil.make_page('/index.html', Toppage)
