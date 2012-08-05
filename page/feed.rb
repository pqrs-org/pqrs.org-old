#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../classes/bootstrap.rb'

class Feed < PqrsBase
  def title
    case @language
    when :en
      'pqrs.org News Feed'
    when :ja
      'pqrs.org News Feed'
    end
  end

  def items
    data = [
            {
              :item_title_l10n => {
                :en => 'NoEjectDelay-4.0.0 has been released',
                :ja => 'NoEjectDelay-4.0.0リリース',
              },
              :link => 'http://pqrs.org/macosx/keyremap4macbook/noejectdelay.html.' + @language.to_s,
              :updated => '2012-08-06',
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
              :item_title_l10n => {
                :en => 'KeyRemap4MacBook-7.8.0 has been released',
                :ja => 'KeyRemap4MacBook-7.8.0リリース',
              },
              :link => 'http://pqrs.org/macosx/keyremap4macbook/index.html.' + @language.to_s,
              :updated => '2012-06-26',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Fixed a bug that "General &gt; Don't restore modifiers in the mouse event" does not work properly.</li>
  <li>Fixed a bug that private.xml does not work properly if &lt;identifier&gt; contains white space.</li>
  <li>Some minor improvements.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>「General &gt; Don't restore modifiers in the mouse event」が正しく動作しないバグを修正しました。</li>
  <li>private.xmlにおいて&lt;identifier&gt;に空白が含まれる場合に設定が有効にならないバグを修正しました。</li>
  <li>いくつかの細かい改善を行いました。</li>
</ul>
EOS
              },
            },
            {
              :item_title_l10n => {
                :en => 'KeyRemap4MacBook-7.7.0 has been released',
                :ja => 'KeyRemap4MacBook-7.7.0リリース',
              },
              :link => 'http://pqrs.org/macosx/keyremap4macbook/index.html.' + @language.to_s,
              :updated => '2012-05-09',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Fixed a bug introduced in version 7.6.0 that detecting of Input Sources does not work properly in Japanese and some other languages.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
<li>KeyRemap4MacBook-7.6.0における、日本語やいくつかの言語で入力ソースの検出がうまく出来ない問題を修正しました。</li>
</ul>
EOS
              },
            },
            {
              :item_title_l10n => {
                :en => 'KeyRemap4MacBook-7.6.0 has been released',
                :ja => 'KeyRemap4MacBook-7.6.0リリース',
              },
              :link => 'http://pqrs.org/macosx/keyremap4macbook/index.html.' + @language.to_s,
              :updated => '2012-05-08',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Improved XML processing engine. (XML reloading is 2x faster.)</li>
  <li>Some minor improvements.</li>
  <li>Increased prepared settings.</li>
  <li>
    Updates for people who add new settings by oneself.
    <ul>
      <li>Added &lt;replacementdef&gt;. You can replace preset settings behavior by this.</li>
      <li>Added &lt;include&gt;. You can load external xml files in private.xml.</li>
      <li>Added --ScrollWheelToKey--.</li>
      <li>Added --ScrollWheelToScrollWheel--.</li>
      <li>Added KeyCode::VK_WAIT_*.</li>
    </ul>
  </li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>XMLの処理エンジンを改善しました。（XMLの再読み込みが2倍速くなりました。）</li>
  <li>いくつかの細かな改善を行ないました。</li>
  <li>約110種類の設定を加えました。</li>
  <li>
    自分で設定を追加する人向けの更新点
    <ul>
      <li>&lt;replacementdef&gt;を加えました。これでプリセットの設定を調整することが出来ます。</li>
      <li>&lt;include&gt;を加えました。private.xmlで他のXMLを読み込むことが出来ます。</li>
      <li>--ScrollWheelToKey-- を加えました。</li>
      <li>--ScrollWheelToScrollWheel-- を加えました。</li>
      <li>KeyCode::VK_WAIT_* を加えました。</li>
    </ul>
  </li>
</ul>
EOS
              },
            },
           ]
    set_l10n_text(data[0..9])
  end
end

[:en, :ja].each do |language|
  path = '/auto/feed/' + language.to_s + '.rss'
  feed = Feed.new
  feed.path = path
  feed.language = language
  PqrsUtil.put_file_if_needed($destination_directory + path, feed.render)
end
