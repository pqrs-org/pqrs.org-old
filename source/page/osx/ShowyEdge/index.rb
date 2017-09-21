#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'

class Index < PqrsBase
  def title
    'ShowyEdge - Software for macOS'
  end

  def navs_left_data
    [
      {
        :href => '/osx/ShowyEdge/index.html',
        :name => 'ShowyEdge',
      },
    ]
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
        :href => '#quit',
        :name => 'How to quit',
      },
      {
        :href => '#uninstall',
        :name => 'Uninstall',
      },
      {
        :href => '#development',
        :name => 'Development',
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
        :version => '3.2.0',
        :updated => '2017-03-23',
        :link => 'files/ShowyEdge-3.2.0.dmg',
        :body => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      An opacity slider has been added to color picker.
    </div>
  </div>

</div>
EOS
      },
      {
        :version => '3.1.0',
        :updated => '2016-04-17',
        :link => 'files/ShowyEdge-3.1.0.dmg',
        :body => <<EOS,
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
      },
      {
        :version => '3.0.0',
        :updated => '2015-12-03',
        :link => 'files/ShowyEdge-3.0.0.dmg',
        :body => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-important">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      macOS 10.8 support has been dropped.
    </div>
  </div>

  <div class="update-description-item update-description-item-important">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      macOS 10.7 support has been dropped.
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
      },
      {
        :version => '2.2.0',
        :updated => '2015-08-30',
        :link => 'files/ShowyEdge-2.2.0.dmg',
        :body => <<EOS,
<ul>
  <li>Close button has been added.</li>
  <li>"Check for updates" (Sparkle) has been updated.</li>
</ul>
EOS
      },
      {
        :version => '2.1.0',
        :updated => '2014-12-02',
        :link => 'files/ShowyEdge-2.1.0.dmg',
        :body => <<EOS,
<ul>
  <li>Multiple displays support has been improved. The indicator is shown in the all screen.</li>
  <li>Quit button has been added.</li>
</ul>
EOS
      },
      {
        :version => '2.0.0',
        :updated => '2014-08-24',
        :link => 'files/ShowyEdge-2.0.0.dmg',
        :body => <<EOS,
<ul>
  <li>"Check for updates" (Sparkle) has been updated.</li>
  <li>The minimum OS version requirement has been changed. (macOS 10.6 -> macOS 10.7)</li>
</ul>
EOS
      },
      {
        :version => '1.8.0',
        :updated => '2014-03-13',
        :link => 'files/ShowyEdge-1.8.0.dmg',
        :body => <<EOS,
<ul>
  <li>Multiple displays have been supported.</li>
</ul>
EOS
      },
      {
        :version => '1.7.0',
        :updated => '2013-10-18',
        :link => 'files/ShowyEdge-1.7.0.dmg',
        :body => <<EOS,
<ul>
  <li>Added "Indicator opacity" configuration.</li>
  <li>Signed with Developer ID..</li>
</ul>
EOS
      },
      {
        :version => '1.6.0',
        :updated => '2013-10-13',
        :link => 'files/ShowyEdge-1.6.0.dmg',
        :body => <<EOS,
<ul>
  <li>Added "Use custom frame" configuration.</li>
  <li>Added "Show icon in Dock" configuration.</li>
  <li>Fixed minor issues.</li>
</ul>
EOS
      },
      {
        :version => '1.4.0',
        :updated => '2013-06-16',
        :link => 'files/ShowyEdge-1.4.0.dmg',
        :body => <<EOS,
<ul>
  <li>Revised file permissions.</li>
</ul>
EOS
      },
      {
        :version => '1.3.0',
        :updated => '2013-06-14',
        :link => 'files/ShowyEdge-1.3.0.dmg',
        :body => <<EOS,
<ul>
  <li>First release.</li>
</ul>
EOS
      },
    ]
  end
end

PqrsUtil.make_page('/osx/ShowyEdge/index.html', Index)
