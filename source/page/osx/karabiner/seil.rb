#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Seil < KarabinerBase
  def body_classes
    [
      {:class => 'with-page-top-fixed-alert'},
    ]
  end

  def current_nav_path
    '/osx/karabiner/seil.html'
  end

  def enable_prettify
    true
  end

  def title
    'Seil - Software for OS X'
  end

  def tabs_definition
    [
      {
        :href => '#installation',
        :name => 'Installation',
      },
      {
        :href => '#usage',
        :name => 'Usage',
      },
      {
        :href => '#uninstall',
        :name => 'Uninstall',
      },
      {
        :href => '#faq',
        :name => 'Q&A',
      },
      {
        :href => '#commandlineinterface',
        :name => 'Command line interface',
      },
      {
        :href => '#history',
        :name => 'Version History',
      },
    ]
  end

  def histories
    data = [
      {
        :version => '12.1.0',
        :updated => '2016-04-26',
        :link => 'files/Seil-12.1.0.dmg',
        :body => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-new">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      "Resume at login" setting has been added. <br />
      You can disable auto resume function.
    </div>
  </div>

  <div class="update-description-item update-description-item-new">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      The physical forward delete key has been added into the changeable keys.
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      The behavior of starting Seil on system startup has been improved.
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
      },
      {
        :version => '12.0.0',
        :updated => '2015-12-04',
        :link => 'files/Seil-12.0.0.dmg',
        :body => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-important">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      OS X 10.10 support has been dropped.
    </div>
  </div>

  <div class="update-description-item update-description-item-important">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      OS X 10.9 support has been dropped.
    </div>
  </div>

  <div class="update-description-item update-description-item-new">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Close button has been added.
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Seil Preferences became resizable.
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
      },
      {
        :version => '11.3.0',
        :updated => '2015-08-08',
        :link => 'files/Seil-11.3.0.dmg',
        :body => <<EOS,
<ul>
  <li>
    Fixed an issue:
    <ul>
      <li>kext loading issue on OS X 10.11 beta 6 has been fixed.</li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => '11.2.0',
        :updated => '2015-06-09',
        :link => 'files/Seil-11.2.0.dmg',
        :body => <<EOS,
<ul>
  <li>OS X 10.11 has been supported.</li>
  <li>Fast User Switching support has been improved.</li>
</ul>
EOS
      },
      {
        :version => '11.1.0',
        :updated => '2015-05-06',
        :link => 'files/Seil-11.1.0.dmg',
        :body => <<EOS,
<ul>
  <li>List of known key code has been updated.</li>
</ul>
EOS
      },
      {
        :version => '11.0.0',
        :updated => '2014-12-05',
        :link => 'files/Seil-11.0.0.dmg',
        :body => <<EOS,
<ul>
  <li>OS X 10.10 support has been improved.</li>
  <li>OS X 10.8 support has been dropped.</li>
  <li>List of known key code has been updated.</li>
</ul>
EOS
      },
      {
        :version => '10.11.0',
        :updated => '2014-08-30',
        :link => 'files/Seil-10.11.0.dmg',
        :body => <<EOS,
<ul>
  <li>Preferences UI has been updated.</li>
  <li>"Check for updates" (Sparkle) has been updated.</li>
</ul>
EOS
      },
      {
        :version => '10.10.0',
        :updated => '2014-07-22',
        :link => 'files/Seil-10.10.0.dmg',
        :body => <<EOS,
<ul>
  <li>
    Fixed an issue:
    <ul>
      <li>A message "Seil cannot connect with kernel extension" might be shown in some environment.</li>
    </ul>
  </li>
  <li>Show an error alert when Seil is not placed in /Applications.</li>
  <li>SteelSeries Apex Gaming Keyboard has been supported.</li>
</ul>
EOS
      },
      {
        :version => '10.9.0',
        :updated => '2014-06-22',
        :link => 'files/Seil-10.9.0.dmg',
        :body => <<EOS,
<ul>
  <li>
    Fixed issues:
    <ul>
      <li>A message "Kernel extension is not loaded" might be shown in some environment.</li>
      <li>Preferences might not show properly after migration until you change the configuration or relaunch Seil.</li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => '10.8.0',
        :updated => '2014-06-18',
        :link => 'files/Seil-10.8.0.dmg',
        :body => <<EOS,
<ul>
  <li>PCKeyboardHack has been renamed to "Seil" since version 10.8.0.</li>
</ul>
EOS
      },
      {
        :version => '10.7.0',
        :updated => '2014-06-03',
        :link => 'files/PCKeyboardHack-10.7.0.dmg',
        :body => <<EOS,
<ul>
  <li>Supported OS X 10.10.</li>
  <li>Changed a way to launch at login. (LaunchAgents -&gt; Login Items)</li>
</ul>
EOS
      },
      {
        :version => '10.6.0',
        :updated => '2014-03-14',
        :link => 'files/PCKeyboardHack-10.6.0.dmg',
        :body => <<EOS,
<ul>
  <li>A command line interface (PCKeyboardHack_cli) has been added.</li>
</ul>
EOS
      },
      {
        :version => '10.5.0',
        :updated => '2014-01-26',
        :link => 'files/PCKeyboardHack-10.5.0.dmg',
        :body => <<EOS,
<ul>
  <li>
    Fixed issues:
    <ul>
      <li>"Kernel extension is not loaded" alert might be shown on some machines when automatic login is enabled.</li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => '10.4.0',
        :updated => '2013-12-01',
        :link => 'files/PCKeyboardHack-10.4.0.dmg',
        :body => <<EOS,
<ul>
  <li>
    PCKeyboardHack no longer requires system restart at installing or upgrading. <br />
    If you need to restart system for some reason, PCKeyboardHack will show an alert which urges you to restart.
  </li>
  <li>Added a remappable key: Application Key (Menu Key) on PC keyboard.</li>
</ul>
EOS
      },
      {
        :version => '10.2.0',
        :updated => '2013-11-10',
        :link => 'files/PCKeyboardHack-10.2.0.dmg',
        :body => <<EOS,
<ul>
  <li>Signed kext with Developer ID.</li>
  <li>Updated installer.</li>
</ul>
EOS
      },
      {
        :version => '10.0.0',
        :updated => '2013-10-20',
        :link => 'files/PCKeyboardHack-10.0.0.dmg',
        :body => <<EOS,
<ul>
  <li>Supported OS X 10.9.</li>
  <li>Icons have been updated. (Thanks to Kouji TAMURA.)</li>
  <li>Signed with Developer ID.</li>
</ul>
EOS
      },
      {
        :version => '9.0.0',
        :updated => '2013-01-13',
        :link => 'files/PCKeyboardHack-9.0.0.dmg',
        :body => <<EOS,
<ul>
  <li>The preferences has been integrated into app.</li>
  <li>Some minor improvements.</li>
</ul>
EOS
      },
      {
        :version => '8.0.0',
        :updated => '2012-08-11',
        :link => 'files/PCKeyboardHack-8.0.0.dmg',
        :body => <<EOS,
<ul>
  <li>Update for OS X 10.8 Mountain Lion.</li>
</ul>
EOS
      },
      {
        :version => '7.4.0',
        :updated => '2012-04-24',
        :link => 'files/PCKeyboardHack-7.4.0.dmg',
        :body => <<EOS,
<ul>
  <li>Changed package archive format to dmg from zip.</li>
</ul>
EOS
      },
      {
        :version => '7.3.0',
        :updated => '2012-02-21',
        :link => 'files/PCKeyboardHack-7.3.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Added a remappable key: International Keys, Lang Keys and keys on Sun Type6 Keyboard.</li>
  <li>Updated source code for Xcode 4.3.</li>
</ul>
EOS
      },
      {
        :version => '7.2.0',
        :updated => '2011-10-26',
        :link => 'files/PCKeyboardHack-7.2.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Added a remappable key: ADB Keyboard Power Key.</li>
  <li>Resolved a minor installer issue.</li>
</ul>
EOS
      },
      {
        :version => '7.1.0',
        :updated => '2011-08-16',
        :link => 'files/PCKeyboardHack-7.1.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Added remappable keys: Command, Control, Option, Shift, Escape, Delete, Return, Keypad Enter.</li>
  <li>Added software update feature.</li>
  <li>Fixed a minor issue on Mac OS X 10.7.</li>
</ul>
EOS
      },
      {
        :version => '7.0.0',
        :updated => '2011-07-23',
        :link => 'files/PCKeyboardHack-7.0.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Update for Mac OS X 10.7 Lion.</li>
  <li>Removed "Change Control Key" feature. Use KeyRemap4MacBook to do it.</li>
</ul>
EOS
      },
      {
        :version => '6.3.0',
        :updated => '2010-05-11',
        :link => 'files/PCKeyboardHack-6.3.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Improved a log message.</li>
</ul>
EOS
      },
      {
        :version => '6.2.0',
        :updated => '2010-01-20',
        :link => 'files/PCKeyboardHack-6.2.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Improved the Preference Pane.</li>
</ul>
EOS
      },
      {
        :version => '6.1.0',
        :updated => '2010-01-05',
        :link => 'files/PCKeyboardHack-6.1.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Supported Fast User Switching.</li>
</ul>
EOS
      },
      {
        :version => '6.0.0',
        :updated => '2009-09-13',
        :link => 'files/PCKeyboardHack-6.0.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Stable release for Snow Leopard..</li>
</ul>
EOS
      },
      {
        :version => '5.1.0',
        :updated => '2008-05-26',
        :link => 'files/PCKeyboardHack-5.1.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Minor Improvements.</li>
</ul>
EOS
      },
      {
        :version => '5.0.0',
        :updated => '2008-05-07',
        :link => 'files/PCKeyboardHack-5.0.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Minor Improvements.</li>
</ul>
EOS
      },
      {
        :version => '2.3.0',
        :updated => '2007-12-15',
        :body => <<EOS,
<ul>
  <li>Initial release.</li>
</ul>
EOS
      },
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/seil.html', Seil)
