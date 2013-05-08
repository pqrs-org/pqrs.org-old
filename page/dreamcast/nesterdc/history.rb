#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './nesterdc_base.rb'

class History < NesterdcBase

  def histories
    data = [
            {
              :version => '7.1',
              :updated => '2002-12-02',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Optimized emulation speed.</li>
  <li>NNNesterJ style cheat code feature has been added.</li>
  <li>Many NNNesterJ style cheat codes has been added into zip package.</li>
  <li>Improved source code around UI of Dreamcast.</li>
  <li>Updated development environment (gcc-3.2, binutils-2.13.1)</li>
  <li>
    NES external device support.
    <ul>
      <li>Arkanoid Paddle (controlled by Dreamcast Mouse)</li>
      <li>Mahjong Controller (controlled by Dreamcast Keyboard)</li>
    </ul>
  </li>
  <li>Some misc improvements.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>エミュレーション速度を最適化</li>
  <li>NNNesterJ形式のチートコードに対応</li>
  <li>数多くのNNNesterJ形式のチートコードをzipパッケージに同梱</li>
  <li>DreamcastのUIまわりのソースコードを改善</li>
  <li>開発環境を更新（gcc-3.2、binutils-2.13.1）</li>
  <li>
    ファミコンの外部機器に対応
    <ul>
      <li>アルカノイドパドル（Dreamcastのマウスで操作）</li>
      <li>マージャンコントローラ（Dreamcastのキーボードで操作）</li>
    </ul>
  </li>
  <li>その他、いくつかの改良</li>
</ul>
EOS
              },
            },
            {
              :version => '7.0',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>New font renderer.</li>
  <li>Rewrited almost all Dreamcast specific code.</li>
  <li>Important bug fix.</li>
  <li>You can operate the system menu by the 2nd and subsequent controllers besides the 1st controller.</li>
  <li>virtual maple port binding on Dreamcast Controllers.</li>
  <li>Fixate KEY bind.</li>
  <li>Update KOS to 1.1.8.</li>
  <li>
    NES external device support:
    <ul>
      <li>Family Keyboard</li>
      <li>Optical Gun</li>
      <li>Hyper Shot</li>
    </ul>
  </li>
  <li>
    Dreamcast device support:
    <ul>
      <li>Arcade Stick</li>
      <li>Dreamcast Keyboard (jp106 only)</li>
      <li>Dreamcast Mouse</li>
    </ul>
  </li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>新しいフォントレンダラー</li>
  <li>Dreamcastまわりのソースコードをリライト</li>
  <li>バグフィックス</li>
  <li>1番目のコントローラ以外でもシステムメニューを操作できるようになりました</li>
  <li>Dreamcastのコントローラとファミコンのコントローラのマッピング設定</li>
  <li>キーバインドを固定しました</li>
  <li>KOSを1.1.8に更新しました</li>
  <li>
    NESの外部デバイス
    <ul>
      <li>キーボード</li>
      <li>光線銃</li>
      <li>ハイパーショット</li>
    </ul>
  </li>
  <li>
    Dreamcastのデバイス
    <ul>
      <li>アーケードスティック</li>
      <li>Dreamcastのキーボード（jp106のみ）</li>
      <li>Dreamcastのマウス</li>
    </ul>
  </li>
</ul>
EOS
              },
            },
            {
              :version => '6.0',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Added bilinear filter.</li>
  <li>Added Game Genie feature.</li>
  <li>Improved Dreamcast controller handling by upgrading KOS.</li>
  <li>Tuned PPU emulation and N106 emulation.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>バイリニアフィルタを追加しました</li>
  <li>Game Genieに対応しました</li>
  <li>KOSの更新によって、Dreamcastのコントローラの処理を改善しました</li>
  <li>PPUのエミュレーション、およびN106のエミュレーションの速度を改善しました</li>
</ul>
EOS
              },
            },
            {
              :version => '5.0',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Added full screen feature.</li>
  <li>Optimized emulation speed.</li>
  <li>Added 4 players support.</li>
  <li>Added VGA support.</li>
  <li>Added misc features.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>フルスクリーン機能を追加しました</li>
  <li>エミュレーション速度を最適化しました</li>
  <li>4人プレイに対応しました</li>
  <li>VGA出力に対応しました</li>
  <li>その他細かい機能追加</li>
</ul>
EOS
              },
            },
            {
              :version => '4.0',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>CPU/PPU/APU/Mappers emulation were ported from unofficial nester.</li>
  <li>Added VMU state save/load feature.</li>
  <li>Added quick state save/load feature.</li>
  <li>Added misc features.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>CPU/PPU/APU/マッパーのエミュレーションをunofficial nesterから移植しました</li>
  <li>VMUへのステートセーブに対応しました</li>
  <li>クイックステートセーブに対応しました</li>
  <li>その他細かい機能追加</li>
</ul>
EOS
              },
            },
           ]
    set_l10n_text(data)
  end
end

PqrsUtil.make_page('/dreamcast/software/nesterdc/history.html', History)
