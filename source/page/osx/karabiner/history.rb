#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class History < KarabinerBase
  def histories
    data = [
            {
              :version => '10.3.0',
              :updated => '2014-10-07',
              :link => 'files/Karabiner-10.3.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Stability at reloading XML has been improved.</li>
  <li>OS X 10.10 support has been improved.</li>
  <li>Prepared settings have been updated.</li>
  <li>"Check for updates" (Sparkle) has been updated.</li>
  <li>"Restart AXNotifier" button has been added into Preferences.</li>
  <li>
    Fixed issue:
    <ul>
      <li>EventViewer does not show control-tab and control-shift-tab event when Full Keyboard Access is enabled.</li>
    </ul>
  </li>
  <li>
    Updates for people who add new settings by oneself:
    <ul>
      <li>
        The following filters have been added.
        <ul>
          <li>&lt;modifierlocked_only&gt;</li>
          <li>&lt;modifierlocked_not&gt;</li>
          <li>&lt;modifierstuck_only&gt;</li>
          <li>&lt;modifierstuck_not&gt;</li>
        </ul>
      </li>
    </ul>
  </li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>XMLを再読込みする時の安定性を向上しました。</li>
  <li>OS X 10.10のサポートを改善しました。</li>
  <li>設定の追加・更新をしました。</li>
  <li>「Check for updates（Sparkle）」を更新しました。</li>
  <li>「Restart AXNotifier」ボタンを設定に追加しました。</li>
  <li>
    下記の問題を修正しました:
    <ul>
      <li>フルキーボードアクセスが有効の場合、EventViewerでcontrol-tabとcontrol-shift-tabが表示されない。</li>
    </ul>
  <li>
    自分で設定を追加する人向けの変更点:
    <ul>
      <li>
        以下のフィルタが追加されました。
        <ul>
          <li>&lt;modifierlocked_only&gt;</li>
          <li>&lt;modifierlocked_not&gt;</li>
          <li>&lt;modifierstuck_only&gt;</li>
          <li>&lt;modifierstuck_not&gt;</li>
        </ul>
      </li>
    </ul>
  </li>
</ul>
EOS
              },
            },
            {
              :version => '10.2.0',
              :updated => '2014-08-20',
              :link => 'files/Karabiner-10.2.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>
    Fixed issues:
    <ul>
      <li>Shortcuts (eg. Ctrl-C, Ctrl-V) might not work properly in Microsoft Remote Desktop.</li>
      <li>Some Java apps will be crash.</li>
    </ul>
  </li>
  <li>Added an option to disable AXNotifier. ("AXNotifier" tab in Preferences.)</li>
  <li>Updated prepared settings.</li>
  <li>Some minor improvements.</li>
  <li>Profile management functions have been added into command line interface.</li>
  <li>
    Updates for people who add new settings by oneself:
    <ul>
      <li>__HoldingKeyToKey__ and __KeyOverlaidModifier__ support Option::KEYTOKEY_BEFORE_KEYDOWN and Option::KEYTOKEY_AFTER_KEYUP.</li>
      <li>You can also use __{ }__ as well as @begin, @end.</li>
    </ul>
  </li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>
    下記の問題を修正しました:
    <ul>
      <li>Microsoft Remote Desktopでショートカット（Ctrl-C, Ctrl-Vなど）がうまく動かないことがあります。</li>
      <li>いくつかのJavaアプリがクラッシュします。</li>
    </ul>
  </li>
  <li>AXNotifierを無効化する設定を追加しました。（設定画面のAXNotifierタブ） </li>
  <li>設定の追加・更新をしました。</li>
  <li>いくつかの細かい改善を行いました。</li>
  <li>プロファイルの管理を行う機能をコマンドラインインターフェースに追加しました。</li>
  <li>
    自分で設定を追加する人向けの変更点:
    <ul>
      <li>__HoldingKeyToKey__と__KeyOverlaidModifier__で、Option::KEYTOKEY_BEFORE_KEYDOWNとOption::KEYTOKEY_AFTER_KEYUPをサポートしました。</li>
      <li>@begin、@endの別名として__{、}__を使えるようになりました。</li>
    </ul>
  </li>
</ul>
EOS
              },
            },
            {
              :version => '10.1.0',
              :updated => '2014-07-21',
              :link => 'files/Karabiner-10.1.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>
    Fixed issues:
    <ul>
      <li>The continuous key sequence will be improper order in environments which VMWare Fusion is installed.</li>
      <li>A message "Karabiner cannot connect with kernel extension" might be shown in some environment.</li>
    </ul>
  </li>
  <li>Show an error alert when Karabiner is not placed in /Applications.</li>
  <li>
    Updates for people who add new settings by oneself:
    <ul>
      <li>Added KeyCode::VK_IOHIKEYBOARD_TOGGLE_NUMLOCK.</li>
    </ul>
  </li>
  <li>Updated prepared settings.</li>
  <li>Some minor improvements.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>
    下記の問題を修正しました:
    <ul>
      <li>VMware Fusionがインストールされた環境で、連続したキー入力の順序が不適切になります。</li>
      <li>いくつかの環境で「Karabiner cannot connect with kernel extension」というメッセージが表示されることがあります。</li>
    </ul>
  </li>
  <li>Karabinerが/Applications以外の場所にある場合にエラーメッセージを表示するようにしました。</li>
  <li>
    自分で設定を追加する人向けの変更点:
    <ul>
      <li>KeyCode::VK_IOHIKEYBOARD_TOGGLE_NUMLOCK を加えました。</li>
    </ul>
  </li>
  <li>設定の追加・更新をしました。</li>
  <li>いくつかの細かい改善を行いました。</li>
</ul>
EOS
              },
            },
            {
              :version => '10.0.0',
              :updated => '2014-07-09',
              :link => 'files/Karabiner-10.0.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>KeyRemap4MacBook has been renamed to "Karabiner".</li>
  <li>
    AXNotifier has been added. <br />
    AXNotifier allows you to observe the window name (window title) and the focused ui element role (eg. whether textarea or not). <br />
    For example, a setting that allows you to use hjkl keys as arrow keys in Finder when you are not editing text such as filename has been added.
  </li>
  <li>
    A command line utility "warp-mouse-cursor-position" has been added.<br />
    Settings which use this utility have been added, too.<br />
    For example, this setting allows you to move mouse cursor by tapping fn key:
    <ul>
      <li>
        Custom Shortcuts
        <ul>
          <li>
            Move mouse cursor to the center of the frontmost app's window:
            <ul>
              <li>By pressing fn key alone.</li>
            </ul>
          </li>
        </ul>
      </li>
    </ul>
  </li>
  <li>
    Fixed issues:
    <ul>
      <li>A message "Kernel extension is not loaded" might be shown in some environment.</li>
      <li>Status Message will not be shown properly when you are using multiple displays.</li>
    </ul>
  </li>
  <li>Updated prepared settings.</li>
  <li>Some minor improvements.</li>
  <li>
    Updates for people who add new settings by oneself:
    <ul>
      <li>
        You can add your own modifiers by &lt;modifierdef&gt;.
        <a href="https://pqrs.org/osx/karabiner/xml.html.en#modifier">Usage of &lt;modifierdef&gt;.</a>
      </li>
      <li>Added &lt;windowname_only&gt; and &lt;windowname_not&gt; filters.</li>
      <li>Added &lt;uielementrole_only&gt; and &lt;uielementrole_not&gt; filters.</li>
      <li>Added __PointingRelativeToKey__.</li>
      <li>
        Added __PassThrough__. You can disable all settings in specific situations.<br />
        For example, this item allow you to disable all settings while you are using virtual machine.<br />
        (This setting is already included in prepared settings.)
<pre>  &lt;item&gt;
    &lt;name&gt;Disable all settings while you are using virtual machine.&lt;/name&gt;
    &lt;identifier&gt;private.ignore_virtual_machine&lt;/identifier&gt;
    &lt;only&gt;VIRTUALMACHINE&lt;/only&gt;
    &lt;autogen&gt;__PassThrough__&lt;/autogen&gt;
  &lt;/item&gt;
</pre>
      </li>
      <li>You can use KeyCode and ConsumerKeyCode in __PointingRelativeToScroll__.</li>
      <li>
        Added ThresholdMillisecond into __HoldingKeyToKey__.<br />
        You can control a holding threshold:
<pre>  &lt;autogen&gt;
    __HoldingKeyToKey__
    KeyCode::ESCAPE,

    @begin
    KeyCode::ESCAPE
    @end

    @begin
    KeyCode::LAUNCHPAD,
    @end

    &lt;!-- open Launchpad by press and hold the escape key for 2 seconds. --&gt;
    ThresholdMillisecond::RawValue::2000,
  &lt;/autogen&gt;
</pre>
      </li>
      <li>Added __BlockUntilKeyUp__.</li>
      <li>Added Option::KEYOVERLAIDMODIFIER_REPEAT_TOKEYS.</li>
      <li>Added Option::DROPSCROLLWHEEL_DROP_MOMENTUM_SCROLL.</li>
      <li>Added KeyCode::VK_NEGATIVE_LOCK_*. (eg. KeyCode::VK_NEGATIVE_LOCK_COMMAND_L, KeyCode::VK_NEGATIVE_LOCK_SHIFT_L.)</li>
      <li>
        Added KeyCode::VK_STICKY_ACTIVE_MODIFIERS_*:
        <ul>
          <li>KeyCode::VK_STICKY_ACTIVE_MODIFIERS_TOGGLE</li>
          <li>KeyCode::VK_STICKY_ACTIVE_MODIFIERS_FORCE_ON</li>
          <li>KeyCode::VK_STICKY_ACTIVE_MODIFIERS_FORCE_OFF</li>
        </ul>
      </li>
      <li>
        An incompatible change:
        <ul>
          <li>
            KeyCode::VK_JIS_TEMPORARY_* are removed.<br />
            Please use &lt;inputsource_filter&gt;, Option::KEYTOKEY_BEFORE_KEYDOWN, Option::KEYTOKEY_AFTER_KEYUP, KeyCode::JIS_EISUU and KeyCode::JIS_KANA instead.
          </li>
        </ul>
      </li>
    </ul>
  </li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>KeyRemap4MacBookはKarabinerという名前になりました。</li>
  <li>
    AXNotifierを追加しました。<br />
    AXNotifierはウィンドウの名前（ウィンドウタイトル）やフォーカスされたUIエレメントのロール（例えば、テキストエリアか否か）を観測します。<br />
    例えば、Finderでテキストの変更（ファイル名など）をしていないときに、hjklキーを矢印キーとして使うことができる設定が追加されました。
  </li>
  <li>
    warp-mouse-cursor-positionというコマンドラインユーティリティを追加しました。<br />
    また、それを使う設定も追加しました。<br />
    例えば、以下の設定を使うと、fnキーを単独で押したときにマウスカーソルをウィンドウの中央に移動します。
    <ul>
      <li>
        Custom Shortcuts
        <ul>
          <li>
            Move mouse cursor to the center of the frontmost app's window:
            <ul>
              <li>By pressing fn key alone.</li>
            </ul>
          </li>
        </ul>
      </li>
    </ul>
  </li>
  <li>
    下記の問題を修正しました:
    <ul>
      <li>いくつかの環境で「Kernel extension is not loaded」というメッセージが表示されることがあります。</li>
      <li>複数のディスプレイを使っているときに、ステータスメッセージが正しく表示されません。</li>
    </ul>
  </li>
  <li>設定の追加・更新をしました。</li>
  <li>いくつかの細かい改善を行いました。</li>
  <li>
    自分で設定を追加する人向けの変更点:
    <ul>
      <li>
        &lt;modifierdef&gt;でモディファイアを追加できるようになりました。
        <a href="https://pqrs.org/osx/karabiner/xml.html.ja#modifier">Usage of &lt;modifierdef&gt;.</a>
      </li>
      <li>&lt;windowname_only&gt;と&lt;windowname_not&gt;フィルタを加えました。</li>
      <li>&lt;uielementrole_only&gt;と&lt;uielementrole_not&gt;フィルタを加えました。</li>
      <li>__PointingRelativeToKey__を加えました。</li>
      <li>
        __PassThrough__を加えました。指定した条件のときに全ての設定を無効にすることができます。<br />
        例えば、以下の設定は、仮想マシン上で全ての設定を無効にします。<br />
        （この設定は既存の設定に含まれています。）
<pre>  &lt;item&gt;
    &lt;name&gt;Disable all settings while you are using virtual machine.&lt;/name&gt;
    &lt;identifier&gt;private.ignore_virtual_machine&lt;/identifier&gt;
    &lt;only&gt;VIRTUALMACHINE&lt;/only&gt;
    &lt;autogen&gt;__PassThrough__&lt;/autogen&gt;
  &lt;/item&gt;
</pre>
      </li>
      <li>__PointingRelativeToScroll__でKeyCodeとConsumerKeyCodeが使えるようになりました。.</li>
      <li>
        __HoldingKeyToKey__でThresholdMillisecondが使えるようになりました。<br />
        長押しの閾値を指定できます:
<pre>  &lt;autogen&gt;
    __HoldingKeyToKey__
    KeyCode::ESCAPE,

    @begin
    KeyCode::ESCAPE
    @end

    @begin
    KeyCode::LAUNCHPAD,
    @end

    &lt;!-- open Launchpad by press and hold the escape key for 2 seconds. --&gt;
    ThresholdMillisecond::RawValue::2000,
  &lt;/autogen&gt;
</pre>
      </li>
      <li>__BlockUntilKeyUp__を追加しました。</li>
      <li>Option::KEYOVERLAIDMODIFIER_REPEAT_TOKEYSを追加しました。</li>
      <li>Option::DROPSCROLLWHEEL_DROP_MOMENTUM_SCROLLを追加しました。</li>
      <li>KeyCode::VK_NEGATIVE_LOCK_*を追加しました。（例: KeyCode::VK_NEGATIVE_LOCK_COMMAND_L, KeyCode::VK_NEGATIVE_LOCK_SHIFT_L）</li>
      <li>
        KeyCode::VK_STICKY_ACTIVE_MODIFIERS_*を追加しました:
        <ul>
          <li>KeyCode::VK_STICKY_ACTIVE_MODIFIERS_TOGGLE</li>
          <li>KeyCode::VK_STICKY_ACTIVE_MODIFIERS_FORCE_ON</li>
          <li>KeyCode::VK_STICKY_ACTIVE_MODIFIERS_FORCE_OFF</li>
        </ul>
      </li>
      <li>
        仮想キーの削除:
        <ul>
          <li>
            KeyCode::VK_JIS_TEMPORARY_*を削除しました。<br />
            &lt;inputsource_filter&gt;、Option::KEYTOKEY_BEFORE_KEYDOWN、Option::KEYTOKEY_AFTER_KEYUP、KeyCode::JIS_EISUU、KeyCode::JIS_KANAをかわりに使ってください。
          </li>
        </ul>
      </li>
    </ul>
  </li>
</ul>
EOS
              },
            },
            {
              :version => '9.3.0',
              :updated => '2014-02-15',
              :link => 'files/KeyRemap4MacBook-9.3.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>
    Fixed an issue:
    <ul>
      <li>"Kernel extension is not loaded" alert might be shown on some machines when automatic login is enabled.</li>
    </ul>
  </li>
  <li>Updated prepared settings.</li>
  <li>
    Updates for people who add new settings by oneself:
    <ul>
      <li>
        These manipulators have been integrated into __KeyToKey__. <br />
        You can change KeyCode, ConsumerKeyCode and PointingButton by __KeyToKey__.
        <ul>
          <li>__KeyToConsumer__</li>
          <li>__ConsumerToKey__</li>
          <li>__ConsumerToConsumer__</li>
          <li>__KeyToPointingButton__</li>
          <li>__PointingButtonToKey__</li>
          <li>__PointingButtonToPointingButton__</li>
        </ul>
      </li>
      <li>
        You can use KeyCode, ConsumerKeyCode and PointingButton in these manipulators:
        <ul>
          <li>__KeyOverlaidModifier__</li>
          <li>__HoldingKeyToKey__</li>
          <li>__SimultaneousKeyPresses__</li>
          <li>__DoublePressModifier__</li>
          <li>__ScrollWheelToKey__</li>
          <li>__PointingRelativeToScroll__</li>
        </ul>
      </li>
      <li>Improved KeyCode::VK_CONFIG_* behavior in the edge case.</li>
      <li>
        You can change the delay and speed of keyboard repeat per autogen. <br />
        For example, this autogen changes control-p to up arrow with:
        <ul>
          <li>delay until repeat: 100ms</li>
          <li>key repeat: 10ms</li>
        </ul>
        <pre>
&lt;autogen&gt;
  __KeyToKey__
  KeyCode::P, MODIFIERFLAG_EITHER_LEFT_OR_RIGHT_CONTROL,
  KeyCode::CURSOR_UP,
  DelayUntilRepeat::RawValue::100,
  KeyRepeat::RawValue::10,
&lt;/autogen&gt;</pre>
      </li>
    </ul>
  </li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>
    下記の問題を修正しました:
    <ul>
      <li>自動ログインを有効にしていると、特定のマシンで「Kernel extension is not loaded」というアラートが出る場合があります。</li>
    </ul>
  </li>
  <li>いくつかの既存の設定を更新しました。</li>
  <li>
    自分で設定を追加する人向けの変更点
    <ul>
      <li>
        以下の命令は__KeyToKey__に統合されました。<br />
        __KeyToKey__にてKeyCodeやConsumerKeyCode、PointingButtonを変更できます。
        <ul>
          <li>__KeyToConsumer__</li>
          <li>__ConsumerToKey__</li>
          <li>__ConsumerToConsumer__</li>
          <li>__KeyToPointingButton__</li>
          <li>__PointingButtonToKey__</li>
          <li>__PointingButtonToPointingButton__</li>
        </ul>
      </li>
      <li>
        以下の命令でKeyCodeやConsumerKeyCode、PointingButtonを使えるようになりました。
        <ul>
          <li>__KeyOverlaidModifier__</li>
          <li>__HoldingKeyToKey__</li>
          <li>__SimultaneousKeyPresses__</li>
          <li>__DoublePressModifier__</li>
          <li>__ScrollWheelToKey__</li>
          <li>__PointingRelativeToScroll__</li>
        </ul>
      </li>
      <li>特殊なケースでのKeyCode::VK_CONFIG_*の挙動を改善しました。</li>
      <li>
        autogenごとにキーリピートの速度の設定が出来るようになりました。<br />
        例えば、以下のautogenではキーリピートの速度を変更しつつ、control-pをカーソルキー（上）に変更します。<br />
        <ul>
          <li>キーリピートまでの時間: 100ms</li>
          <li>キーリピートの速度: 10ms</li>
        </ul>
        <pre>
&lt;autogen&gt;
  __KeyToKey__
  KeyCode::P, MODIFIERFLAG_EITHER_LEFT_OR_RIGHT_CONTROL,
  KeyCode::CURSOR_UP,
  DelayUntilRepeat::RawValue::100,
  KeyRepeat::RawValue::10,
&lt;/autogen&gt;</pre>
      </li>
    </ul>
  </li>
</ul>
EOS
              },
            },
            {
              :version => '9.2.0',
              :updated => '2013-11-29',
              :link => 'files/KeyRemap4MacBook-9.2.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>
    KeyRemap4MacBook no longer requires system restart at installing or upgrading. <br />
    If you need to restart system for some reason, KeyRemap4MacBook will show an alert which urges you to restart.
  </li>
  <li>
    Fixed issues:
    <ul>
      <li>System might crash when you disconnected a keyboard.</li>
    </ul>
  </li>
  <li>Updated some prepared settings.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>
    KeyRemap4MacBookのインストールやアップグレード時にシステムの再起動が不要になりました。<br />
    もし何らかの原因でシステムの再起動が必要なときは、再起動をうながす警告を表示します。<br />
  </li>
  <li>
    下記の問題を修正しました:
    <ul>
      <li>キーボードを抜いた際にシステムがクラッシュすることがある。</li>
    </ul>
  </li>
  <li>いくつかの既存の設定を更新しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '9.0.0',
              :updated => '2013-11-15',
              :link => 'files/KeyRemap4MacBook-9.0.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Optimized for OS X 10.9. <br />
    KeyRemap4MacBook 9.0.0 requires OS X 10.9+.</li>
  <li>Added delay configurations into multi-touch extension.</li>
  <li>Drop power button support due to limitations of OS X 10.9. <br />
    You can no longer change the power button on MacBook.</li>
  <li>Fixed issues:
    <ul><li>ENV_HOME does not work properly in included xml.</li>
      <li>New plugged devices will not be recognized on OS X 10.9.</li>
      <li>KeyRemap4MacBook disables the shut down dialog.</li>
      <li>Fn key on Leopold FC660M cancels mouse dragging.</li></ul></li>
  <li>Updated prepared settings:
    <ul><li>"VIM Emulation" has been updated.</li>
      <li>Fixed "MarkSet" in Emacs Mode.</li></ul></li>
  <li>Updated installer.</li>
  <li>Some minor improvements.</li>
  <li>Signed with Developer ID.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>OS X 10.9向けに最適化しました。<br />
    KeyRemap4MacBook 9.0.0はOS X 10.9以降でのみ動作します。</li>
  <li>multi-touch extensionで設定を切り替えるまでの遅延を設定できるようにしました。</li>
  <li>OS X 10.9の制限により、電源ボタンの変更機能を削除しました。<br />
    もうMacBookの電源ボタンを変更することは出来ません。</li>
  <li>下記の問題を修正しました:
    <ul><li>private.xmlにおいて、ENV_HOMEが正常に動作しないことがある。</li>
      <li>OS X 10.9で、新しく接続されたデバイスに設定が反映されない。</li>
      <li>シャットダウンダイアログが無効になってしまう。</li>
      <li>Leopold FC660MキーボードのFnキーでマウスドラッグが中断されてしまう。</li></ul></li>
  <li>既存の設定を更新しました:
    <ul><li>「VIM Emulation」を更新しました。</li>
      <li>Emacs Modeの「MarkSet」を修正しました。</li></ul></li>
  <li>インストーラを更新しました。</li>
  <li>いくつかの細かい改善を行いました。</li>
  <li>Developer IDで署名しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '8.4.0',
              :updated => '2013-09-23',
              :link => 'files/KeyRemap4MacBook-8.4.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Icons have been refined. (Thanks to Kouji TAMURA.).</li>
  <li>
    Updates for people who add new settings by oneself:
    <ul>
      <li>
        @begin and @end have been introduced in private.xml.<br />
        You can use more than one key to remapped keys with __KeyOverlaidModifier__, __DoublePressModifier__.
      </li>
      <li>Shell commands execution has been supported with KeyCode::VK_OPEN_URL_*.</li>
    </ul>
  </li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>アイコンを改善しました。（Kouji TAMURAさんによる）</li>
  <li>
    自分で設定を追加する人向けの更新点:
    <ul>
      <li>
        @begin、@end記法が導入されました。<br />
        __KeyOverlaidModifier__や__DoublePressModifier__で複数のキーに変換することが出来ます。
      </li>
      <li>KeyCode::VK_OPEN_URL_*でシェルのコマンドを実行することが出来るようになりました。</li>
    </ul>
  </li>
</ul>
EOS
              },
            },
            {
              :version => '8.3.0',
              :updated => '2013-05-19',
              :link => 'files/KeyRemap4MacBook-8.3.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Fixed an issue that "Look up" feature of OS X (tap trackpad with three fingers) does not work properly.</li>
  <li>Some minor improvements.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>OS Xの「調べる」機能（トラックパッドを3本指でタップ）が正常に動作しない問題を修正しました。</li>
  <li>いくつかの細かい改善を行いました。</li>
</ul>
EOS
              },
            },
            {
              :version => '8.2.0',
              :updated => '2013-05-17',
              :link => 'files/KeyRemap4MacBook-8.2.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Fixed an issue that object selection is disabled on Adobe Fireworks.</li>
  <li>Fixed an issue that "General &gt; Don't remap XXX" does not take effect immediately.</li>
  <li>Fixed an issue that control-eject shortcut does not work properly on OS X 10.7 and 10.6.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>Adobe Fireworksでオブジェクトが選択できなくなる問題を修正しました。</li>
  <li>「General &gt; Don't remap XXX」が即座に反映されない問題を修正しました。</li>
  <li>control-ejectがOS X 10.7、10.6にて正常に動作しない問題を修正しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '8.1.0',
              :updated => '2013-05-12',
              :link => 'files/KeyRemap4MacBook-8.1.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Power button remapping has been supported. (Thanks to Peter Kamb who is the author of PowerKey.)</li>
  <li>Added "Quit KeyRemap4MacBook" into menu bar.</li>
  <li>Added some styles into status message indicator.</li>
  <li>Improved compatibility with <a href="http://smoothmouse.com/" target="_blank">SmoothMouse</a>.</li>
  <li>
    Updates for people who add new settings by oneself.
    <ul>
      <li>Supported more than three keys at __SimultaneousKeyPresses__.</li>
      <li>Added KeyCode::VK_OPEN_URL_*.</li>
      <li>Added KeyCode::VK_PARTIAL_KEYDOWN and KeyCode::VK_PARTIAL_KEYUP.</li>
      <li>Added Option::POINTINGRELATIVETOSCROLL_TOKEYS.</li>
      <li>Added __FlipPointingRelative__.</li>
      <li>Added __FlipScrollWheel__.</li>
      <li>
        Added filters:
        <ul>
          <li>&lt;lastpressedphysicalkey_not&gt;</li>
          <li>&lt;lastpressedphysicalkey_only&gt;</li>
          <li>&lt;elapsedtimesincelastpressed_greaterthan&gt;</li>
          <li>&lt;elapsedtimesincelastpressed_lessthan&gt;</li>
        </ul>
      </li>
    </ul>
  </li>
  <li>Some minor improvements.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>パワーボタンのリマッピングに対応しました。（PowerKeyの作者であるPeter Kambさんに感謝します。）</li>
  <li>「Quit KeyRemap4MacBook」をメニューバーに追加しました。</li>
  <li>ステータス表示の見た目の種類を増やしました。</li>
  <li><a href="http://smoothmouse.com/" target="_blank">SmoothMouse</a>がインストールされている場合の挙動を改善しました。</li>
  <li>
    自分で設定を追加する人向けの更新点
    <ul>
      <li>__SimultaneousKeyPresses__において、3キー以上の同時押しに対応しました。</li>
      <li>KeyCode::VK_OPEN_URL_*を追加しました。</li>
      <li>KeyCode::VK_PARTIAL_KEYDOWN、KeyCode::VK_PARTIAL_KEYUPを追加しました。</li>
      <li>Option::POINTINGRELATIVETOSCROLL_TOKEYSを追加しました。</li>
      <li>__FlipPointingRelative__を追加しました。</li>
      <li>__FlipScrollWheel__を追加しました。</li>
      <li>
        以下のフィルタを追加しました。
        <ul>
          <li>&lt;lastpressedphysicalkey_not&gt;</li>
          <li>&lt;lastpressedphysicalkey_only&gt;</li>
          <li>&lt;elapsedtimesincelastpressed_greaterthan&gt;</li>
          <li>&lt;elapsedtimesincelastpressed_lessthan&gt;</li>
        </ul>
      </li>
    </ul>
  </li>
  <li>いくつかの細かい改善を行いました。</li>
</ul>
EOS
              },
            },
            {
              :version => '8.0.0',
              :updated => '2013-01-30',
              :link => 'files/KeyRemap4MacBook-8.0.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Preferences has been integrated into app.</li>
  <li>Integrated a status message indicator. (Removed Growl support.)</li>
  <li>Added a preference of ignored area into "multi-touch extension".</li>
  <li>Changed KeyRemap4MacBook_cli location.</li>
  <li>Dynamic KeyCode::VK_CHANGE_INPUTSOURCE definition feature has been added.</li>
  <li>&lt;inputsource_only&gt; definition feature has been added.</li>
  <li>Added Option::SIMULTANEOUSKEYPRESSES_STRICT_KEY_ORDER.</li>
  <li>Added DeviceLocation into &lt;device_only&gt;, &lt;device_not&gt; filters.</li>
  <li>Changed --KeyToKey-- to __KeyToKey__ at &lt;autogen&gt;.</li>
  <li>Some minor improvements.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>設定画面をアプリに統合しました。</li>
  <li>ステータス表示をアプリに統合しました。（Growlのサポートを辞めました。）</li>
  <li>マルチタッチ拡張において、タッチを無視するエリアを設定できるようにしました。</li>
  <li>KeyRemap4MacBook_cliの場所を変更しました。</li>
  <li>KeyCode::VK_CHANGE_INPUTSOURCEを動的に定義できるようになりました。</li>
  <li>&lt;inputsource_only&gt;を動的に定義できるようになりました。</li>
  <li>Option::SIMULTANEOUSKEYPRESSES_STRICT_KEY_ORDERを追加しました。</li>
  <li>&lt;device_only&gt;, &lt;device_not&gt;フィルタにおいて、DeviceLocationが指定できるようになりました。</li>
  <li>&lt;autogen&gt;において、--KeyToKey--を__KeyToKey__に変更しました。</li>
  <li>いくつかの細かい改善を行いました。</li>
</ul>
EOS
              },
            },
            {
              :version => '7.8.0',
              :updated => '2012-06-26',
              :link => 'files/KeyRemap4MacBook-7.8.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Fixed an issue that "General &gt; Don't restore modifiers in the mouse event" does not work properly.</li>
  <li>Fixed an issue that private.xml does not work properly if &lt;identifier&gt; contains white space.</li>
  <li>Some minor improvements.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>「General &gt; Don't restore modifiers in the mouse event」が正しく動作しない問題を修正しました。</li>
  <li>private.xmlにおいて&lt;identifier&gt;に空白が含まれる場合に設定が有効にならない問題を修正しました。</li>
  <li>いくつかの細かい改善を行いました。</li>
</ul>
EOS
              },
            },
            {
              :version => '7.7.0',
              :updated => '2012-05-09',
              :link => 'files/KeyRemap4MacBook-7.7.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Fixed an issue introduced in version 7.6.0 that detecting of Input Sources does not work properly in Japanese and some other languages.</li>
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
              :version => '7.6.0',
              :updated => '2012-05-08',
              :link => 'files/KeyRemap4MacBook-7.6.0.dmg',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Improved XML processing engine. (XML reloading is 2x faster.)</li>
  <li>Some minor improvements.</li>
  <li>Increased prepared settings.</li>
  <li>
    Updates for people who add new settings by oneself.
    <ul>
      <li>Added &lt;replacementdef&gt;. You can replace preset settings behavior by this. <a href="xml.html.en#replacementdef">(reference)</a></li>
      <li>Added &lt;include&gt;. You can load external xml files in private.xml. <a href="xml.html.en#include">(reference)</a></li>
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
      <li>
        &lt;replacementdef&gt;を加えました。これでプリセットの設定を調整することが出来ます。
        <a href="xml.html.ja#replacementdef">（リファレンス）</a>
      </li>
      <li>
        &lt;include&gt;を加えました。private.xmlで他のXMLを読み込むことが出来ます。
        <a href="xml.html.ja#include">（リファレンス）</a>
      </li>
      <li>--ScrollWheelToKey-- を加えました。</li>
      <li>--ScrollWheelToScrollWheel-- を加えました。</li>
      <li>KeyCode::VK_WAIT_* を加えました。</li>
    </ul>
  </li>
</ul>
EOS
              },
            },
            {
              :version => '7.5.0',
              :updated => '2011-11-02',
              :link => 'files/KeyRemap4MacBook-7.5.0.pkg.zip',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Support Growl-1.3 on notifications.</li>
  <li>Some minor improvements.</li>
  <li>Resolved a minor installer issue.</li>
  <li>Increased prepared settings.</li>
  <li>
    Updates for people who add new settings by oneself.
    <ul>
      <li>
        Dynamic ApplicationType,DeviceVendor,DeviceProduct definition feature has been added.
        <ul>
          <li><a href="xml.html.en#appdef">Application Specific Setting</a></li>
          <li><a href="xml.html.en#devicedef">Device Specific Setting</a></li>
        </ul>
      </li>
      <li>Added --StripModifierFromScrollWheel--.</li>
      <li>Added Option::KEYTOKEY_BEFORE_KEYDOWN, Option::KEYTOKEY_AFTER_KEYUP.</li>
      <li>Added KeyCode::VK_CONSUMERKEY_*.</li>
    </ul>
  </li>
</ul>
EOS
                :ja => <<EOS,

<ul>
  <li>通知機能でGrowl-1.3に対応しました。</li>
  <li>いくつかの細かな改善を行ないました。</li>
  <li>インストーラの小さな問題を修正しました。</li>
  <li>約40種類の設定を加えました。</li>
  <li>
    自分で設定を追加する人向けの更新点
    <ul>
      <li>
        ApplicationType,DeviceVendor,DeviceProductを動的に定義できるようになりました。
        <ul>
          <li><a href="xml.html.ja#appdef">ApplicationTypeについて（英語）</a></li>
          <li><a href="xml.html.ja#devicedef">DeviceVendor,DeviceProductについて（英語）</a></li>
        </ul>
      </li>
      <li>--StripModifierFromScrollWheel--を加えました。</li>
      <li>Option::KEYTOKEY_BEFORE_KEYDOWN, Option::KEYTOKEY_AFTER_KEYUPを加えました。</li>
      <li>KeyCode::VK_CONSUMERKEY_*を加えました。</li>
    </ul>
  </li>
</ul>
EOS
              },
            },
            {
              :version => '7.4.0',
              :updated => '2011-08-23',
              :link => 'files/KeyRemap4MacBook-7.4.0.pkg.zip',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Some improvements on Mac OS X 10.7 (Lion).</li>
  <li>
    Removed "General &gt; Enable CapsLock LED Hack" from preferences.<br />
    If you're using this setting for PCKeyboardHack, use <a href="seil.html.en#noaction">"No Action" configuration</a> instead.
  </li>
  <li>
    Cleaned up "Simultaneous Vi Mode".<br />
    (Some options have been moved into "Home Row Arrow and Modifier Mode".)
  </li>
  <li>
    Added "[Key Overlaid Modifier] Initial Modifier Wait" preference into "Key Repeat" tab.<br />
    KeyOverlaidModifier changes key to modifier after this wait.<br />
    This preference is useful if your typing speed is too fast.
  </li>
  <li>Some minor improvements.</li>
  <li>Increased prepared settings.</li>
  <li>
    Updates for people who add new settings by oneself.
    <ul>
      <li>Added KeyCode::VK_STICKY_*_FORCE_ON, KeyCode::VK_STICKY_*_FORCE_OFF.</li>
      <li>Added --DropScrollWheel--.</li>
    </ul>
  </li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>Mac OS X 10.7での動作を改善しました。</li>
  <li>
    「General &gt; Enable CapsLock LED Hack」の設定を削除しました。<br />
    PCKeyboardHackのためにこの設定を使っている場合は、<a href="seil.html.ja#noaction">「アクションなし」の方法</a>に変更してください。
  </li>
  <li>
    「Simultaneous Vi Mode」を整理しました。<br />
    いくつかの設定は「Home Row Arrow and Modifier Mode」に移動しました。
  </li>
  <li>
    「Key Repeat」タブの設定に「[Key Overlaid Modifier] Initial Modifier Wait」を加えました。<br />
    ここで設定した時間だけ、KeyOverlaidModifierがキーを修飾キーに変更するのを待ちます。<br />
    キーボード入力がとても速い人にとって有効なオプションです。
  </li>
  <li>いくつかの細かな改善を行ないました。</li>
  <li>いくつかの設定を加えました。</li>
  <li>
    自分で設定を追加する人向けの更新点
    <ul>
      <li>KeyCode::VK_STICKY_*_FORCE_ON, KeyCode::VK_STICKY_*_FORCE_OFFを加えました。</li>
      <li>--DropScrollWheel--を加えました。</li>
    </ul>
  </li>
</ul>
EOS
              },
            },
            {
              :version => '7.3.0',
              :updated => '2011-05-17',
              :link => 'files/KeyRemap4MacBook-7.3.0.pkg.zip',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Improved stability when using Sticky Keys in Universal Access.</li>
  <li>Improved stability when using multi-touch extension together.</li>
  <li>Improved "Lazy-Modifier (KeyCode::VK_LAZY_*)" behavior.</li>
  <li>Some minor improvements.</li>
  <li>Increased prepared settings.</li>
  <li>
    Updates for people who add new settings by oneself.
    <ul>
      <li>Added KeyCode::VK_MOUSEKEY_BUTTON_*.</li>
      <li>Added Option::NOREPEAT.</li>
      <li>Added DeviceProduct::ANY.</li>
    </ul>
  </li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>ユニバーサルアクセスの複合キーを使用している場合の安定性を改善しました。</li>
  <li>multi-touch extensionを使用している場合の安定性を改善しました。</li>
  <li>遅延モディファイア(KeyCode::VK_LAZY_*)の動作を改善しました。</li>
  <li>いくつかの細かな改善を行ないました。</li>
  <li>約80種類の設定を加えました。</li>
  <li>
    自分で設定を追加する人向けの更新点
    <ul>
      <li>KeyCode::VK_MOUSEKEY_BUTTON_*を加えました。</li>
      <li>Option::NOREPEAT を加えました。</li>
      <li>DeviceProduct::ANYを加えました。</li>
    </ul>
  </li>
</ul>
EOS
              },
            },
            {
              :version => '7.2.0',
              :updated => '2011-03-08',
              :link => 'files/KeyRemap4MacBook-7.2.0.pkg.zip',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Fixed an issue that Growl notification did not work in specific environment.</li>
  <li>Fixed an issue that the default setting of checkForUpdate was "Nothing".</li>
  <li>Improved multi-touch extension around sleep/wakeup.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>Growl通知が一部の環境で動作しない問題を修正しました。</li>
  <li>ソフトウェアアップデートの初期設定値が「確認しない」になっていた問題を修正しました。</li>
  <li>multi-touch extensionの動作を改善しました。</li>
  <li>約20種類の設定を加えました。</li>
</ul>
EOS
              },
            },
            {
              :version => '7.1.0',
              :updated => '2011-02-22',
              :link => 'files/KeyRemap4MacBook-7.1.0.pkg.zip',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>
    Added setting to be able to use "Logitech Number Pad" which we were not able not use in Mac OS X.<br />
    Activate "Change KeyPad Key &gt; Logitech Number Pad Hack".
  </li>
  <li>
    Replaced StatusWindow with Growl.<br />
    StatusWindow was displaying the lock state of modifiers and extra message.<br />
    Now, these messages are shown by Growl.<br />
  </li>
  <li>
    Attached an application named "multi-touch extension".<br />
    This application activates specific setting while fingers touch the multi-touch device.<br />
    <a href="http://www.sonycsl.co.jp/person/rekimoto/tsense/soft/index.html" target="_blank">ThumbSense</a> is one of the function which this application supplies.<br />
    See <a href="document.html.en#multitouchextension">Multi-touch extension</a> for more details.
  </li>
  <li>Fixed some issues.</li>
  <li>Increased prepared settings.</li>
  <li>Updates for people adding new setting by oneself
    <ul>
      <li>Added &lt;modifier_only&gt;, &lt;modifier_not&gt; filters.</li>
      <li>Added --ForceNumLockOn-- to &lt;autogen&gt;.</li>
    </ul>
  </li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>
    Mac OS Xで使うことが出来なかったLogitech Number Padを使えるようにするための設定を追加しました。<br />
    "Change KeyPad Key &gt; Logitech Number Pad Hack"を有効にしてください。
  </li>
  <li>
    通知ウィンドウをGrowlを使うように変更しました。<br />
  </li>
  <li>
    multi-touch extensionというアプリケーションを添付しました。<br />
    このアプリケーションはマルチタッチデバイスに指が触れている間だけ、指定した設定を有効にします。<br />
    <a href="http://www.sonycsl.co.jp/person/rekimoto/tsense/soft/indexj.html" target="_blank">ThumbSense</a>はこのアプリケーションが提供する機能の一つです。<br />
    詳しくは <a href="document.html.ja#multitouchextension">マルチタッチ拡張</a>をご覧ください。
  </li>
  <li>
    設定の追加・調整
    <ul>
      <li>
        左右のコマンドキーを「英数／かな」キーとしても使う設定について、「英数／かな」キーを優先する設定を追加しました。
      </li>
      <li>新親指シフト配列「飛鳥」に対応しました。有効にするには設定から「asuka」で検索してください。</li>
      <li>親指シフト、下駄配列の「ローマ字モード」について、高速打鍵時の挙動を改善しました。</li>
      <li>
        <a href="http://pi200k.blog35.fc2.com/?no=70" target="_blank">天地逆Dvorak配列</a>を加えました。外付けキーボードを逆さにして使う配列です。有効にするには設定から「pi200k」で検索してください。
        <ul>
          <li><a href="img/jis_updown_dvorak/normal.png">通常時の画像</a></li>
          <li><a href="img/jis_updown_dvorak/extra1.png">Ex1モディファイア押下時の画像</a></li>
          <li><a href="img/jis_updown_dvorak/extra2.png">Ex2モディファイア押下時の画像</a></li>
        </ul>
      </li>
    </ul>
  </li>
  <li>いくつかの問題を修正しました。</li>
  <li>約140種類の設定を加えました。</li>
  <li>
    自分で設定を追加する人向けの更新点
    <ul>
      <li>&lt;modifier_only&gt;, &lt;modifier_not&gt;フィルタを追加しました。</li>
      <li>&lt;autogen&gt; に --ForceNumLockOn--を追加しました。</li>
    </ul>
  </li>
</ul>
EOS
              },
            },
            {
              :version => '7.0.0',
              :updated => '2010-12-14',
              :link => 'files/KeyRemap4MacBook-7.0.0.pkg.zip',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>
    Now, you can add your original settings very very easily.<br />
    <a href="document.html.en#privatexml">How to add new settings.</a><br />
    You don't need to build a package from source code anymore.
  </li>
  <li>
    Added momentum scroll feature to "CursorMove to ScrollWheel" on Pointing Devices.<br />
    If you don't like momentum scroll, turn on "Disable Momentum Scroll" by System Preferences.
  </li>
  <li>Added "Mouse Keys Mode". You can move mouse pointer by hjkl keys.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>
    設定の追加方法が大幅に簡単になりました。<br />
    <a href="document.html.ja#privatexml">新しい設定の追加方法</a><br />
    もうパッケージをビルドする必要はありません。
  </li>
  <li>下駄配列、新下駄配列をサポートしました。有効にするには設定から「geta」で検索してください。</li>
  <li>
    マウスデバイス向けの"CursorMove to ScrollWheel"で慣性スクロールするようにしました。<br />
    慣性スクロールを無効にするには設定から"Disable Momentum Scroll"を有効にしてください。
  </li>
  <li>Mouse Keys Modeを追加しました。hjklキーでマウスカーソルを動かせます。</li>
  <li>約260種類の設定を加えました。</li>
</ul>
EOS
              },
            },
            {
              :version => '6.9.0',
              :updated => '2010-09-14',
              :link => 'files/KeyRemap4MacBook-6.9.0.pkg.zip',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Improved "Simultaneous Vi Mode" behavior. You can use Vi style navigation (hjkl) on all applications.</li>
  <li>Fixed a problem that a broken package may be generated depending on environment when we build a package from a source code.</li>
  <li>Fixed a problem which slight setting did not work properly.</li>
  <li>Fixed a minor problem around C-x prefix of "Emacs Mode".</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>
    親指シフト NICOLAをサポートしました。<br />
    有効にするには設定から「oyayubi」で検索してください。
  </li>
  <li>
    あらゆるアプリケーションでVi形式のカーソル（HJKL）を使うことが出来るSimultaneous Vi Modeの動作を改良しました。<br />
    設定を有効にした状態でSキーとDキーを同時に押すとViモードになります。<br />
  </li>
  <li>ソースコードからパッケージを作る際に、環境によっては不正なパッケージが作成されてしまう問題を修正しました。</li>
  <li>極一部の設定が動作しなくなっていたのを修正しました。</li>
  <li>Emacs ModeのC-xプレフィックスについて細かい不具合を修正しました。</li>
  <li>約130種類の設定を加えました。</li>
</ul>
EOS
              },
            },
            {
              :version => '6.8.0',
              :updated => '2010-07-27',
              :link => 'files/KeyRemap4MacBook-6.8.0.pkg.zip',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>
    Changed the default value of key repeat wait.<br />
    Please set "[Key Repeat] wait" to "30ms" from "Key Repeat" tab if you prefer the previous default value.
  </li>
  <li>Added "Pass Through Mode". You can cancel all settings temporarily.</li>
  <li>Added "Sticky Modifiers".</li>
  <li>Fixed minor issues.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>
    キーボードリピートのデフォルト値をMac OS Xのデフォルト値にあわせました。<br />
    以前のバージョンの速度が好みの場合は"[Key Repeat] wait"を30msに設定してください。
  </li>
  <li>Pass Through Modeを加えました。一時的に全ての設定を無効にできます。</li>
  <li>Sticky Modifiers を加えました。</li>
  <li>いくつかの細かい問題を修正しました。</li>
  <li>約160種類の設定を加えました。</li>
</ul>
EOS
              },
            },
            {
              :version => '6.7.0',
              :updated => '2010-05-15',
              :link => 'files/KeyRemap4MacBook-6.7.0.pkg.zip',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Fixed the problem that a key and a mouse were not changed when we used KeyRemap4MacBook-6.6.0 with USB Overdrive.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>KeyRemap4MacBook-6.6.0とUSB Overdriveを同時に使ったときにキーやマウスが変更されない問題を修正しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '6.6.0',
              :updated => '2010-05-11',
              :link => 'files/KeyRemap4MacBook-6.6.0.pkg.zip',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Added a function to define effective setting only with a specific keyboard. For example, "Change Control_L to Command_L" only in Happy Hacking Keyboard.</li>
  <li>Added a function of "Simultaneous Key Presses" re-mapping.</li>
  <li>Added virtual modifiers (ModifierFlag::EXTRA1 - ModifierFlag::EXTRA5).</li>
  <li>Added a function to set the repeat speed of the functional keys (volume adjustment, etc).</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>特定のキーボードのみ有効な設定を定義することが出来るようになりました。例えばHappy Hacking KeyboardでのみControl_LをCommand_Lにするなど。</li>
  <li>同時押し（Simultaneous Key Presses）をサポートしました。例えばFとJを同時に押すとカーソルキー（下）に変換する設定を追加しました。</li>
  <li>仮想モディファイア（ModifierFlag::EXTRA1 - ModifierFlag::EXTRA5）を追加しました。</li>
  <li>機能キーのリピート速度を調整可能にしました。</li>
  <li>約100種類の設定を加えました。</li>
</ul>
EOS
              },
            },
            {
              :version => '6.5.0',
              :updated => '2010-03-16',
              :link => 'files/KeyRemap4MacBook-6.5.0.pkg.zip',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Added the key repeat feature to re-mapped functional keys (volume adjustment, etc),</li>
  <li>Added an Event Viewer application that could confirm a key event, a mouse event.</li>
  <li>Merged the configuration GUI of menu bar to the system preference pane.</li>
  <li>Added "Complete Vi Mode" that you can move the cursor only in "hjkl" without pushing the command key or any modifier keys.</li>
  <li>Added KeyCode::VK_CHANGE_INPUTMODE_FRENCH, and keys for the other languages. It is a virtual key to change the Input Source directly.</li>
  <li>Increased prepared settings.</li>
  <li>Fixed some issues.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>リマップされた機能キー（音量調節など）でキーリピートするようにしました。</li>
  <li>キーイベント、マウスイベントを確認できるイベントビューアアプリを追加しました。</li>
  <li>メニューバーの設定をシステム環境設定に統合しました。</li>
  <li>コマンドキーなどを押さずにhjklだけでカーソル移動が出来るComplete Vi Modeを追加しました。</li>
  <li>KeyCode::VK_CHANGE_INPUTMODE_FRENCHやその他の言語向けのキーを加えました。仏語入力モードなどに直接切り替える仮想キーです。</li>
  <li>70種類以上のリマッピングを加えました。</li>
  <li>その他、細かい問題を修正しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '6.4.0',
              :updated => '2010-01-21',
              :link => 'files/KeyRemap4MacBook-6.4.0.pkg.zip',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Improved stability when using with the driver of the 3rd vender such as "Logitech Control Center".</li>
  <li>Fixed a mouse drag movement when convert a key into a mouse click.</li>
  <li>Improved Paralles Desktop support at the recognition of the application.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>Logitech Control Centerなどのサードベンダのドライバと共に使用するときの安定性を向上しました。</li>
  <li>キーをマウスクリックに変換している場合にマウスドラッグがうまく動作しない不具合を修正しました。</li>
  <li>アプリケーションの認識においてParallelsデスクトップのサポートを強化しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '6.3.0',
              :updated => '2010-01-05',
              :link => 'files/KeyRemap4MacBook-6.3.0.pkg.tar.gz',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Supported Fast User Switching.</li>
  <li>Added software update feature.</li>
  <li>Improved the movement of the re-mapping.</li>
  <li>Improved the judgement method of the internal/external keyboard.</li>
  <li>Increased prepared settings.</li>
  <li>Fixed some issues.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>Fast User Switching（ログオフ無しでのユーザー切り替え）をサポートしました。</li>
  <li>ソフトウェアアップデート機能を追加しました。</li>
  <li>リマッピングの動作を向上しました。</li>
  <li>内部キーボード/外部キーボードの判定方法を改善しました。</li>
  <li>Commandキーなどにかな/英数キーを付加する機能の互換性を向上しました。</li>
  <li>70種類以上のリマッピングを追加しました。</li>
  <li>その他、細かい問題を修正しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '6.2.0',
              :updated => '2009-11-12',
              :link => 'files/KeyRemap4MacBook-6.2.0.pkg.tar.gz',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Fixed the issue that the server process crashes in English environment.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>サーバプロセスが英語環境でクラッシュする問題を修正しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '6.1.0',
              :updated => '2009-11-11',
              :link => 'files/KeyRemap4MacBook-6.1.0.pkg.tar.gz',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Changed to enable the remapping of the third vendor's devices by default.</li>
  <li>Fixed the memory leak of the server process.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>標準でサードベンダーのデバイスのリマッピングを有効にしました。</li>
  <li>サーバプロセスのメモリーリークを修正しました。</li>
  <li>入力モードの取得方法を改善したため、「かな/英数」のトグルや、日本語入力時のみ有効なリマップなどの動作がより自然になりました。</li>
  <li>60種類以上のリマッピングを追加しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '6.0.0',
              :updated => '2009-10-08',
              :link => 'files/KeyRemap4MacBook-6.0.0.pkg.tar.gz',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Stable release for Snow Leopard.</li>
  <li>Fixed the third vendor's keyboard/mouse handling.</li>
  <li>Fixed the issue that the fn key doesn't work when "Don't Remap the Internal/External Keyboard" is activated.</li>
  <li>Improved behavior of key-repeating (continuing even if mouse button is clicked.)</li>
  <li>Improved the compatibility with Spaces.</li>
  <li>Fixed the uninstaller.</li>
  <li>Fixed the CapsLock handling.</li>
  <li>Improved the stability in the 64bit environment.</li>
  <li>Fixed to run PreferencePane in 64bit.</li>
  <li>Misc changes.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>Snow Leopard用の安定版です。</li>
  <li>サードベンダーの独自ドライバを使用するキーボード・マウスの扱いを改善しました。</li>
  <li>Don't Remap the Internal/External Keyboardが有効になっているときにfnキーが動作しない問題を修正しました。</li>
  <li>マウスクリック時にキーリピートが中断しないようにしました。</li>
  <li>Spacesとの親和性を向上しました。</li>
  <li>アンインストーラを修正しました。</li>
  <li>CapsLockの扱いについて修正しました。</li>
  <li>64bit環境での安定性を向上しました。</li>
  <li>システム環境設定が64bitで動作するよう修正しました。</li>
  <li>その他、リマッピングの追加など。</li>
</ul>
EOS
              },
            },
            {
              :version => '5.1.0',
              :updated => '2008-05-26',
              :link => 'files/KeyRemap4MacBook-5.1.0.pkg.tar.gz',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Fixed the kernel panic after returning from hibernation.</li>
  <li>Fixed the kernel panic when all keyboard are detached on iMac.</li>
  <li>Fixed the issue which "SettingList" didn't work on some environment.</li>
  <li>Added uninstaller.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>ハイバネーションからの復帰の際のカーネルパニックを修正しました。</li>
  <li>iMacで全てのキーボードが取り外された際のカーネルパニックを修正しました。</li>
  <li>SettingListがいくつかの環境で動かなかった問題を修正しました。</li>
  <li>アンインストーラを加えました。</li>
</ul>
EOS
              },
            },
            {
              :version => '5.0.0',
              :updated => '2008-05-07',
              :link => 'files/KeyRemap4MacBook-5.0.0.pkg.tar.gz',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Added the multi-user support.</li>
  <li>Added the multiple settings per user.</li>
  <li>Added remappings which are effective at only specific applications. (ex. Return -&gt; CMD+O only in Finder).</li>
  <li>"Emacs Mode" will be disabled in Terminal.app and Emacs.app automatically.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>マルチユーザーに対応しました。</li>
  <li>複数の設定を使いわけることが出来るようになりました。</li>
  <li>特定のアプリケーションのみ有効なリマップをサポートしました。（FinderのみReturnをCMD+Oに変更など）</li>
  <li>Emacs ModeがTerminal.appやEmacs.appで自動的に無効になるようになりました。</li>
  <li>新たに80近くのリマッピングを加えました。</li>
</ul>

EOS
              },
            },
            {
              :version => '4.0.0',
              :updated => '2008-04-02',
              :link => 'files/KeyRemap4MacBook-4.0.0.pkg.tar.gz',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Fixed an issue which disable any remappings when you logged out.</li>
  <li>Added the feature to enable remapping for only inside keyboard or an outside keyboard.</li>
  <li>Supported PointingDevice remappings (Key to Mouseclick, Fn+CursorMove to ScrollWheel).</li>
  <li>Changed a place to install. (/Library/org.pqrs/KeyRemap4MacBook)</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>ログアウトをするとリマップが効かなくなる問題を修正しました。</li>
  <li>内蔵キーボード、もしくは外付けキーボードのみリマップを有効にする機能を加えました。</li>
  <li>マウスをサポートしました。（キーとクリックのリマップやFnスクロール機能など）</li>
  <li>インストールする場所を変更しました。(/Library/org.pqrs/KeyRemap4MacBook)</li>
  <li>新たに50近くのリマッピングを加えました。</li>
</ul>
EOS
              },
            },
            {
              :version => '3.2.0',
              :updated => '2008-02-29',
              :link => 'files/KeyRemap4MacBook-3.2.0.pkg.tar.gz',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Added an existence check of DoubleCommand to installer. If DoubleCommand has already installed, the installation will be aborted.</li>
  <li>Support PowerBook G4 &amp; iBook.</li>
  <li>Fixed the key repeat issue on VMware + emacsmode.</li>
  <li>Fixed a minor PreferencePane issue.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>
    DoubleCommandが既にインストールされているかどうかインストーラでチェックするようにしました。
    DoubleCommandがインストール済みの場合、インストールは中断されます。
  </li>
  <li>PowerBook G4とiBookをサポートしました。</li>
  <li>VMware上でのEmacs Modeの動作を改善しました。</li>
  <li>システム環境設定の細かい問題を修正しました。</li>
  <li>いくつかのリマッピングを加えました。</li>
</ul>
EOS
              },
            },
            {
              :version => '3.1.0',
              :updated => '2008-02-18',
              :link => 'files/KeyRemap4MacBook-3.1.0.pkg.tar.gz',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Correct the key repeat behavior.</li>
  <li>Fixed a minor PreferencePane issue.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>キーリピートの挙動を修正しました。</li>
  <li>システム環境設定の細かい問題を修正しました。</li>
  <li>いくつかのリマッピングを加えました。</li>
</ul>
EOS
              },
            },
            {
              :version => '3.0.0',
              :updated => '2008-02-04',
              :link => 'files/KeyRemap4MacBook-3.0.0.pkg.tar.gz',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Added PreferencePane. Now, you can configure by System Preferences.</li>
  <li>Added Key Repeat feature.</li>
  <li>Improved handling of CapsLock.</li>
  <li>Renamed many sysctl entries. Please set up by PreferencePane if you upgrade from older version.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>システム環境設定から設定が出来るようになりました。</li>
  <li>キーリピート処理を自前で行うようにしました。</li>
  <li>CapsLockの扱いを改善しました。</li>
  <li>sysctlのエントリ名を大きく変更しました。以前のバージョンからアップデートする場合はシステム環境設定から設定をし直してください。</li>
  <li>新しくいくつかのリマッピングを加えました。また廃れたリマッピングは削除しました。</li>
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
  <li>Fixed the issue around arrow keys and delete key when remap.fn2* is enable.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>fnキーを動作を変更したときのカーソルキーやDeleteキーの動作を適切な形に修正しました。</li>
  <li>いくつかのリマッピングを加えました。</li>
</ul>
EOS
              },
            },
            {
              :version => '2.2.0',
              :updated => '2007-11-29',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Fixed the issue around "key to modifier" (enter2*, return2option, jis_eisuu2*, jis_kana2*).</li>
  <li>Support PowerBook enter key.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>キーをモディファイアに変換する部分の問題を修正しました。</li>
  <li>PowerBookのenterキーをサポートしました。</li>
  <li>いくつかのリマッピングを加えました。</li>
</ul>
EOS
              },
            },
            {
              :version => '2.1.0',
              :updated => '2007-11-15',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Increased prepared settings.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>いくつかのリマッピングを加えました。</li>
</ul>
EOS
              },
            },
            {
              :version => '2.0.0',
              :updated => '2007-11-01',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Added support for Leopard.</li>
  <li>Added support for PowerBook restrictively.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>Leopardをサポートしました。</li>
  <li>限定的ですがPowerBookに対応しました。</li>
  <li>いくつかのリマッピングを加えました。</li>
</ul>
EOS
              },
            },
            {
              :version => '1.5.0',
              :updated => '2007-10-10',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Increased prepared settings.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>いくつかのリマッピングを加えました。</li>
</ul>
EOS
              },
            },
            {
              :version => '1.4.0',
              :updated => '2007-09-09',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Increased prepared settings.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>いくつかのリマッピングを加えました。</li>
</ul>
EOS
              },
            },
            {
              :version => '1.3.0',
              :updated => '2007-08-15',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Updated StartupScript.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>スタートアップスクリプトを更新しました。</li>
  <li>いくつかのリマッピングを加えました。</li>
</ul>
EOS
              },
            },
            {
              :version => '1.2.0',
              :updated => '2007-06-10',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Increased prepared settings.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>いくつかのリマッピングを加えました。</li>
</ul>
EOS
              },
            },
            {
              :version => '1.0.2',
              :updated => '2007-02-05',
              :body_l10n => {
                :en => <<EOS,
<ul>
  <li>Universal Binary.</li>
</ul>
EOS
                :ja => <<EOS,
<ul>
  <li>Universal Binary化しました。</li>
</ul>
EOS
              },
            },
            {
              :version => '1.0.1',
              :updated => '2006-10-09',
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

PqrsUtil.make_page('/osx/karabiner/history.html', History)
