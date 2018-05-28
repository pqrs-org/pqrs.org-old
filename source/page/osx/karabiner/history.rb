#!/usr/bin/ruby
require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class History < KarabinerBase
  def title
    'Version History - ' + super()
  end

  def histories
    data = [
      {
        :version => 'Karabiner-Elements 12.0.0',
        :updated => '2018-04-12',
        :link => 'files/Karabiner-Elements-12.0.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner-elements/12.0.0.html'),
      },
      {
        :version => 'Karabiner-Elements 11.6.0',
        :updated => '2018-02-20',
        :link => 'files/Karabiner-Elements-11.6.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner-elements/11.6.0.html'),
      },
      {
        :version => 'Karabiner-Elements 11.5.0',
        :updated => '2017-12-30',
        :link => 'files/Karabiner-Elements-11.5.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner-elements/11.5.0.html'),
      },
      {
        :version => 'Karabiner-Elements 11.4.0',
        :updated => '2017-12-07',
        :link => 'files/Karabiner-Elements-11.4.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner-elements/11.4.0.html'),
      },
      {
        :version => 'Karabiner-Elements 11.3.0',
        :updated => '2017-11-12',
        :link => 'files/Karabiner-Elements-11.3.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner-elements/11.3.0.html'),
      },
      {
        :version => 'Karabiner-Elements 11.2.0',
        :updated => '2017-11-09',
        :link => 'files/Karabiner-Elements-11.2.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner-elements/11.2.0.html'),
      },
      {
        :version => 'Karabiner-Elements 11.1.0',
        :updated => '2017-10-04',
        :link => 'files/Karabiner-Elements-11.1.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner-elements/11.1.0.html'),
      },
      {
        :version => 'Karabiner-Elements 11.0.0',
        :updated => '2017-09-18',
        :link => 'files/Karabiner-Elements-11.0.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner-elements/11.0.0.html'),
      },
      {
        :version => 'Karabiner 10.22.0',
        :updated => '2016-10-31',
        :link => 'files/Karabiner-10.22.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner/10.22.0.html'),
      },
      {
        :version => 'Karabiner 10.21.0',
        :updated => '2016-07-05',
        :link => 'files/Karabiner-10.21.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner/10.21.0.html'),
      },
      {
        :version => '10.20.0',
        :updated => '2016-06-16',
        :link => 'files/Karabiner-10.20.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner/10.20.0.html'),
      },
      {
        :version => 'Karabiner 10.19.0',
        :updated => '2016-06-09',
        :link => 'files/Karabiner-10.19.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner/10.19.0.html'),
      },
      {
        :version => 'Karabiner 10.18.0',
        :updated => '2016-03-07',
        :link => 'files/Karabiner-10.18.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner/10.18.0.html'),
      },
      {
        :version => 'Karabiner 10.17.0',
        :updated => '2016-03-05',
        :link => 'files/Karabiner-10.17.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner/10.17.0.html'),
      },
      {
        :version => 'Karabiner 10.15.0',
        :updated => '2015-12-21',
        :link => 'files/Karabiner-10.15.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner/10.15.0.html'),
      },
      {
        :version => 'Karabiner 10.14.0',
        :updated => '2015-11-05',
        :link => 'files/Karabiner-10.14.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner/10.14.0.html'),
      },
      {
        :version => 'Karabiner 10.13.0',
        :updated => '2015-11-02',
        :link => 'files/Karabiner-10.13.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner/10.13.0.html'),
      },
      {
        :version => 'Karabiner 10.11.0',
        :updated => '2015-10-10',
        :link => 'files/Karabiner-10.11.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner/10.11.0.html'),
      },
      {
        :version => 'Karabiner 10.10.0',
        :updated => '2015-10-08',
        :link => 'files/Karabiner-10.10.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner/10.10.0.html'),
      },
      {
        :version => 'Karabiner 10.9.0',
        :updated => '2015-09-07',
        :link => 'files/Karabiner-10.9.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner/10.9.0.html'),
      },
      {
        :version => 'Karabiner 10.8.0',
        :updated => '2015-08-24',
        :link => 'files/Karabiner-10.8.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner/10.8.0.html'),
      },
      {
        :version => 'Karabiner 10.7.0',
        :updated => '2015-08-10',
        :link => 'files/Karabiner-10.7.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner/10.7.0.html'),
      },
      {
        :version => 'Karabiner 10.6.0',
        :updated => '2015-01-13',
        :link => 'files/Karabiner-10.6.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner/10.6.0.html'),
      },
      {
        :version => 'Karabiner 10.5.0',
        :updated => '2014-12-12',
        :link => 'files/Karabiner-10.5.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner/10.5.0.html'),
      },
      {
        :version => 'Karabiner 10.4.0',
        :updated => '2014-10-14',
        :link => 'files/Karabiner-10.4.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner/10.4.0.html'),
      },
      {
        :version => 'Karabiner 10.3.0',
        :updated => '2014-10-07',
        :link => 'files/Karabiner-10.3.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner/10.3.0.html'),
      },
      {
        :version => 'Karabiner 10.2.0',
        :updated => '2014-08-20',
        :link => 'files/Karabiner-10.2.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner/10.2.0.html'),
      },
      {
        :version => 'Karabiner 10.1.0',
        :updated => '2014-07-21',
        :link => 'files/Karabiner-10.1.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner/10.1.0.html'),
      },
      {
        :version => 'Karabiner 10.0.0',
        :updated => '2014-07-09',
        :link => 'files/Karabiner-10.0.0.dmg',
        :body => File.read(__dir__ + '/../../../../appcast-updater/update-descriptions/karabiner/10.0.0.html'),
      },
      {
        :version => 'KeyRemap4MacBook 9.3.0',
        :updated => '2014-02-15',
        :link => 'files/KeyRemap4MacBook-9.3.0.dmg',
        :body => <<EOS,
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
      },
      {
        :version => 'KeyRemap4MacBook 9.2.0',
        :updated => '2013-11-29',
        :link => 'files/KeyRemap4MacBook-9.2.0.dmg',
        :body => <<EOS,
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
      },
      {
        :version => 'KeyRemap4MacBook 9.0.0',
        :updated => '2013-11-15',
        :link => 'files/KeyRemap4MacBook-9.0.0.dmg',
        :body => <<EOS,
<ul>
  <li>Optimized for macOS 10.9. <br />
    KeyRemap4MacBook 9.0.0 requires macOS 10.9+.</li>
  <li>Added delay configurations into multi-touch extension.</li>
  <li>Drop power button support due to limitations of macOS 10.9. <br />
    You can no longer change the power button on MacBook.</li>
  <li>Fixed issues:
    <ul><li>ENV_HOME does not work properly in included xml.</li>
      <li>New plugged devices will not be recognized on macOS 10.9.</li>
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
      },
      {
        :version => 'KeyRemap4MacBook 8.4.0',
        :updated => '2013-09-23',
        :link => 'files/KeyRemap4MacBook-8.4.0.dmg',
        :body => <<EOS,
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
      },
      {
        :version => 'KeyRemap4MacBook 8.3.0',
        :updated => '2013-05-19',
        :link => 'files/KeyRemap4MacBook-8.3.0.dmg',
        :body => <<EOS,
<ul>
  <li>Fixed an issue that "Look up" feature of macOS (tap trackpad with three fingers) does not work properly.</li>
  <li>Some minor improvements.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 8.2.0',
        :updated => '2013-05-17',
        :link => 'files/KeyRemap4MacBook-8.2.0.dmg',
        :body => <<EOS,
<ul>
  <li>Fixed an issue that object selection is disabled on Adobe Fireworks.</li>
  <li>Fixed an issue that "General &gt; Don't remap XXX" does not take effect immediately.</li>
  <li>Fixed an issue that control-eject shortcut does not work properly on macOS 10.7 and 10.6.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 8.1.0',
        :updated => '2013-05-12',
        :link => 'files/KeyRemap4MacBook-8.1.0.dmg',
        :body => <<EOS,
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
      },
      {
        :version => 'KeyRemap4MacBook 8.0.0',
        :updated => '2013-01-30',
        :link => 'files/KeyRemap4MacBook-8.0.0.dmg',
        :body => <<EOS,
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
      },
      {
        :version => 'KeyRemap4MacBook 7.8.0',
        :updated => '2012-06-26',
        :link => 'files/KeyRemap4MacBook-7.8.0.dmg',
        :body => <<EOS,
<ul>
  <li>Fixed an issue that "General &gt; Don't restore modifiers in the mouse event" does not work properly.</li>
  <li>Fixed an issue that private.xml does not work properly if &lt;identifier&gt; contains white space.</li>
  <li>Some minor improvements.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 7.7.0',
        :updated => '2012-05-09',
        :link => 'files/KeyRemap4MacBook-7.7.0.dmg',
        :body => <<EOS,
<ul>
  <li>Fixed an issue introduced in version 7.6.0 that detecting of Input Sources does not work properly in Japanese and some other languages.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 7.6.0',
        :updated => '2012-05-08',
        :link => 'files/KeyRemap4MacBook-7.6.0.dmg',
        :body => <<EOS,
<ul>
  <li>Improved XML processing engine. (XML reloading is 2x faster.)</li>
  <li>Some minor improvements.</li>
  <li>Increased prepared settings.</li>
  <li>
    Updates for people who add new settings by oneself.
    <ul>
      <li>Added &lt;replacementdef&gt;. You can replace preset settings behavior by this. <a href="xml.html#replacementdef">(reference)</a></li>
      <li>Added &lt;include&gt;. You can load external xml files in private.xml. <a href="xml.html#include">(reference)</a></li>
      <li>Added --ScrollWheelToKey--.</li>
      <li>Added --ScrollWheelToScrollWheel--.</li>
      <li>Added KeyCode::VK_WAIT_*.</li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 7.5.0',
        :updated => '2011-11-02',
        :link => 'files/KeyRemap4MacBook-7.5.0.pkg.zip',
        :body => <<EOS,
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
          <li><a href="xml.html#appdef">Application Specific Setting</a></li>
          <li><a href="xml.html#devicedef">Device Specific Setting</a></li>
        </ul>
      </li>
      <li>Added --StripModifierFromScrollWheel--.</li>
      <li>Added Option::KEYTOKEY_BEFORE_KEYDOWN, Option::KEYTOKEY_AFTER_KEYUP.</li>
      <li>Added KeyCode::VK_CONSUMERKEY_*.</li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 7.4.0',
        :updated => '2011-08-23',
        :link => 'files/KeyRemap4MacBook-7.4.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Some improvements on Mac macOS 10.7 (Lion).</li>
  <li>
    Removed "General &gt; Enable CapsLock LED Hack" from preferences.<br />
    If you're using this setting for PCKeyboardHack, use <a href="seil.html#noaction">"No Action" configuration</a> instead.
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
      },
      {
        :version => 'KeyRemap4MacBook 7.3.0',
        :updated => '2011-05-17',
        :link => 'files/KeyRemap4MacBook-7.3.0.pkg.zip',
        :body => <<EOS,
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
      },
      {
        :version => 'KeyRemap4MacBook 7.2.0',
        :updated => '2011-03-08',
        :link => 'files/KeyRemap4MacBook-7.2.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Fixed an issue that Growl notification did not work in specific environment.</li>
  <li>Fixed an issue that the default setting of checkForUpdate was "Nothing".</li>
  <li>Improved multi-touch extension around sleep/wakeup.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 7.1.0',
        :updated => '2011-02-22',
        :link => 'files/KeyRemap4MacBook-7.1.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>
    Added setting to be able to use "Logitech Number Pad" which we were not able not use in Mac macOS.<br />
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
    See <a href="document_v10.html#multitouchextension">Multi-touch extension</a> for more details.
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
      },
      {
        :version => 'KeyRemap4MacBook 7.0.0',
        :updated => '2010-12-14',
        :link => 'files/KeyRemap4MacBook-7.0.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>
    Now, you can add your original settings very very easily.<br />
    <a href="document_v10.html#privatexml">How to add new settings.</a><br />
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
      },
      {
        :version => 'KeyRemap4MacBook 6.9.0',
        :updated => '2010-09-14',
        :link => 'files/KeyRemap4MacBook-6.9.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Improved "Simultaneous Vi Mode" behavior. You can use Vi style navigation (hjkl) on all applications.</li>
  <li>Fixed a problem that a broken package may be generated depending on environment when we build a package from a source code.</li>
  <li>Fixed a problem which slight setting did not work properly.</li>
  <li>Fixed a minor problem around C-x prefix of "Emacs Mode".</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 6.8.0',
        :updated => '2010-07-27',
        :link => 'files/KeyRemap4MacBook-6.8.0.pkg.zip',
        :body => <<EOS,
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
      },
      {
        :version => 'KeyRemap4MacBook 6.7.0',
        :updated => '2010-05-15',
        :link => 'files/KeyRemap4MacBook-6.7.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Fixed the problem that a key and a mouse were not changed when we used KeyRemap4MacBook-6.6.0 with USB Overdrive.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 6.6.0',
        :updated => '2010-05-11',
        :link => 'files/KeyRemap4MacBook-6.6.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Added a function to define effective setting only with a specific keyboard. For example, "Change Control_L to Command_L" only in Happy Hacking Keyboard.</li>
  <li>Added a function of "Simultaneous Key Presses" re-mapping.</li>
  <li>Added virtual modifiers (ModifierFlag::EXTRA1 - ModifierFlag::EXTRA5).</li>
  <li>Added a function to set the repeat speed of the functional keys (volume adjustment, etc).</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 6.5.0',
        :updated => '2010-03-16',
        :link => 'files/KeyRemap4MacBook-6.5.0.pkg.zip',
        :body => <<EOS,
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
      },
      {
        :version => 'KeyRemap4MacBook 6.4.0',
        :updated => '2010-01-21',
        :link => 'files/KeyRemap4MacBook-6.4.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Improved stability when using with the driver of the 3rd vender such as "Logitech Control Center".</li>
  <li>Fixed a mouse drag movement when convert a key into a mouse click.</li>
  <li>Improved Paralles Desktop support at the recognition of the application.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 6.3.0',
        :updated => '2010-01-05',
        :link => 'files/KeyRemap4MacBook-6.3.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Supported Fast User Switching.</li>
  <li>Added software update feature.</li>
  <li>Improved the movement of the re-mapping.</li>
  <li>Improved the judgement method of the internal/external keyboard.</li>
  <li>Increased prepared settings.</li>
  <li>Fixed some issues.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 6.2.0',
        :updated => '2009-11-12',
        :link => 'files/KeyRemap4MacBook-6.2.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Fixed the issue that the server process crashes in English environment.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 6.1.0',
        :updated => '2009-11-11',
        :link => 'files/KeyRemap4MacBook-6.1.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Changed to enable the remapping of the third vendor's devices by default.</li>
  <li>Fixed the memory leak of the server process.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 6.0.0',
        :updated => '2009-10-08',
        :link => 'files/KeyRemap4MacBook-6.0.0.pkg.tar.gz',
        :body => <<EOS,
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
      },
      {
        :version => 'KeyRemap4MacBook 5.1.0',
        :updated => '2008-05-26',
        :link => 'files/KeyRemap4MacBook-5.1.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Fixed the kernel panic after returning from hibernation.</li>
  <li>Fixed the kernel panic when all keyboard are detached on iMac.</li>
  <li>Fixed the issue which "SettingList" didn't work on some environment.</li>
  <li>Added uninstaller.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 5.0.0',
        :updated => '2008-05-07',
        :link => 'files/KeyRemap4MacBook-5.0.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Added the multi-user support.</li>
  <li>Added the multiple settings per user.</li>
  <li>Added remappings which are effective at only specific applications. (ex. Return -&gt; CMD+O only in Finder).</li>
  <li>"Emacs Mode" will be disabled in Terminal.app and Emacs.app automatically.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 4.0.0',
        :updated => '2008-04-02',
        :link => 'files/KeyRemap4MacBook-4.0.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Fixed an issue which disable any remappings when you logged out.</li>
  <li>Added the feature to enable remapping for only inside keyboard or an outside keyboard.</li>
  <li>Supported PointingDevice remappings (Key to Mouseclick, Fn+CursorMove to ScrollWheel).</li>
  <li>Changed a place to install. (/Library/org.pqrs/KeyRemap4MacBook)</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 3.2.0',
        :updated => '2008-02-29',
        :link => 'files/KeyRemap4MacBook-3.2.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Added an existence check of DoubleCommand to installer. If DoubleCommand has already installed, the installation will be aborted.</li>
  <li>Support PowerBook G4 &amp; iBook.</li>
  <li>Fixed the key repeat issue on VMware + emacsmode.</li>
  <li>Fixed a minor PreferencePane issue.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 3.1.0',
        :updated => '2008-02-18',
        :link => 'files/KeyRemap4MacBook-3.1.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Correct the key repeat behavior.</li>
  <li>Fixed a minor PreferencePane issue.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 3.0.0',
        :updated => '2008-02-04',
        :link => 'files/KeyRemap4MacBook-3.0.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Added PreferencePane. Now, you can configure by System Preferences.</li>
  <li>Added Key Repeat feature.</li>
  <li>Improved handling of CapsLock.</li>
  <li>Renamed many sysctl entries. Please set up by PreferencePane if you upgrade from older version.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 2.3.0',
        :updated => '2007-12-15',
        :body => <<EOS,
<ul>
  <li>Fixed the issue around arrow keys and delete key when remap.fn2* is enable.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 2.2.0',
        :updated => '2007-11-29',
        :body => <<EOS,
<ul>
  <li>Fixed the issue around "key to modifier" (enter2*, return2option, jis_eisuu2*, jis_kana2*).</li>
  <li>Support PowerBook enter key.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 2.1.0',
        :updated => '2007-11-15',
        :body => <<EOS,
<ul>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 2.0.0',
        :updated => '2007-11-01',
        :body => <<EOS,
<ul>
  <li>Added support for Leopard.</li>
  <li>Added support for PowerBook restrictively.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 1.5.0',
        :updated => '2007-10-10',
        :body => <<EOS,
<ul>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 1.4.0',
        :updated => '2007-09-09',
        :body => <<EOS,
<ul>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 1.3.0',
        :updated => '2007-08-15',
        :body => <<EOS,
<ul>
  <li>Updated StartupScript.</li>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 1.2.0',
        :updated => '2007-06-10',
        :body => <<EOS,
<ul>
  <li>Increased prepared settings.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 1.0.2',
        :updated => '2007-02-05',
        :body => <<EOS,
<ul>
  <li>Universal Binary.</li>
</ul>
EOS
      },
      {
        :version => 'KeyRemap4MacBook 1.0.1',
        :updated => '2006-10-09',
        :body => <<EOS,
<ul>
  <li>Initial release.</li>
</ul>
EOS
      },
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/history.html', History)
