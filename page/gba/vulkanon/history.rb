#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './vulkanon_base.rb'

class History < VulkanonBase
  def histories
    data = [
            {
              :version => '2.1',
              :updated => '2007-07-01',
              :body_l10n => {
                :en => <<EOS,
<ul>
<li>Fixed a bug that screen is not drawn properly when Vulkanon is launched from the G6 Flash cartridge.</li>
<li>Changed some sound-effects.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
<li>G6 Flashカートリッジで起動したときに画面が正しく描写されないバグを修正しました。</li>
<li>いくつかの効果音を変更しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '2.0',
              :updated => '2006-08-31',
              :body_l10n => {
                :en => <<EOS,
<ul>
<li>Added sound composed by <a href="http://www.nullsleep.com/" target="_blank">Nullsleep</a>.</li>
<li>Adjusted level design.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
<li><a href="http://www.nullsleep.com/" target="_blank">Nullsleep</a>氏によるサウンドを追加しました。
<li>弾幕のステージ構成を調整しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '1.0',
              :updated => '2006-07-26',
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

PqrsUtil.make_page('/gba/vulkanon/history.html', History)
