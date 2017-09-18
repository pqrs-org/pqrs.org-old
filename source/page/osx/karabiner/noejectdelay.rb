#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Noejectdelay < KarabinerBase
  def body_classes
    [
      {:class => 'with-page-top-fixed-alert'},
    ]
  end

  def current_nav_path
    '/osx/karabiner/noejectdelay.html'
  end

  def title
    'NoEjectDelay - Software for OS X'
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
        :href => '#show-version',
        :name => 'How to know the installed version',
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
        :href => '#history',
        :name => 'Version History',
      },
    ]
  end

  def histories
    data = [
      {
        :version => '7.1.0',
        :updated => '2016-02-29',
        :link => 'files/NoEjectDelay-7.1.0.dmg',
        :body => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      NoEjectDelay Utility UI has been adjusted.
    </div>
  </div>

</div>
EOS
      },
      {
        :version => '7.0.0',
        :updated => '2015-10-03',
        :link => 'files/NoEjectDelay-7.0.0.dmg',
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
      An utility application "NoEjectDelay Utility.app" has been added.
    </div>
  </div>

  <div class="update-description-item update-description-item-new">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Uninstaller has been bundled.
    </div>
  </div>

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      The file location has been moved to "/Library/Application Support/org.pqrs/NoEjectDelay" from "/Library/org.pqrs/NoEjectDelay".
    </div>
  </div>

</div>
EOS
      },
      {
        :version => '6.1.0',
        :updated => '2015-06-09',
        :link => 'files/NoEjectDelay-6.1.0.dmg',
        :body => <<EOS,
<ul>
  <li>OS X 10.11 has been supported.</li>
</ul>
EOS
      },
      {
        :version => '6.0.0',
        :updated => '2014-11-01',
        :link => 'files/NoEjectDelay-6.0.0.dmg',
        :body => <<EOS,
<ul>
  <li>OS X 10.10 has been supported.</li>
  <li>OS X 10.8 support has been dropped.</li>
</ul>
EOS
      },
      {
        :version => '5.4.0',
        :updated => '2014-02-27',
        :link => 'files/NoEjectDelay-5.4.0.dmg',
        :body => <<EOS,
<ul>
  <li>
    Fixed an issue:
    <ul>
      <li>NoEjectDelay causes kernel panic on OS X 10.9.2.</li>
    </ul>
  </li>
</ul>
EOS
      },
      {
        :version => '5.3.0',
        :updated => '2013-12-01',
        :link => 'files/NoEjectDelay-5.3.0.dmg',
        :body => <<EOS,
<ul>
  <li>NoEjectDelay no longer requires system restart at installing or upgrading.</li>
</ul>
EOS
      },
      {
        :version => '5.2.0',
        :updated => '2013-11-10',
        :link => 'files/NoEjectDelay-5.2.0.dmg',
        :body => <<EOS,
<ul>
  <li>Signed kext with Developer ID.</li>
  <li>Updated installer.</li>
</ul>
EOS
      },
      {
        :version => '5.0.0',
        :updated => '2013-10-20',
        :link => 'files/NoEjectDelay-5.0.0.dmg',
        :body => <<EOS,
<ul>
  <li>Supported OS X 10.9.</li>
  <li>Signed with Developer ID.</li>
</ul>
EOS
      },
      {
        :version => '4.1.0',
        :updated => '2013-01-13',
        :link => 'files/NoEjectDelay-4.1.0.dmg',
        :body => <<EOS,
<ul>
  <li>Fixed a minor issue in the installer.</li>
</ul>
EOS
      },
      {
        :version => '4.0.0',
        :updated => '2012-08-05',
        :link => 'files/NoEjectDelay-4.0.0.dmg',
        :body => <<EOS,
<ul>
  <li>Update for OS X 10.8 Mountain Lion.</li>
</ul>
EOS
      },
      {
        :version => '3.6.0',
        :updated => '2012-08-05',
        :link => 'files/NoEjectDelay-3.6.0.dmg',
        :body => <<EOS,
<ul>
  <li>Added "Disable F12Eject" feature.</li>
</ul>
EOS
      },
      {
        :version => '3.4.0',
        :updated => '2012-04-24',
        :link => 'files/NoEjectDelay-3.4.0.dmg',
        :body => <<EOS,
<ul>
  <li>Changed package archive format to dmg from zip.</li>
</ul>
EOS
      },
      {
        :version => '3.3.0',
        :updated => '2012-02-21',
        :link => 'files/NoEjectDelay-3.3.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Updated source code for Xcode 4.3.</li>
</ul>
EOS
      },
      {
        :version => '3.2.0',
        :updated => '2011-10-26',
        :link => 'files/NoEjectDelay-3.2.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Resolved a minor installer issue.</li>
</ul>
EOS
      },
      {
        :version => '3.1.0',
        :updated => '2011-08-16',
        :link => 'files/NoEjectDelay-3.1.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Fixed a minor issue on Mac OS X 10.7.</li>
</ul>
EOS
      },
      {
        :version => '3.0.0',
        :updated => '2011-07-23',
        :link => 'files/NoEjectDelay-3.0.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Update for Mac OS X 10.7 Lion.</li>
</ul>
EOS
      },
      {
        :version => '2.1.0',
        :updated => '2010-05-11',
        :link => 'files/NoEjectDelay-2.1.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Fixed a minor bug.</li>
</ul>
EOS
      },
      {
        :version => '2.0.0',
        :updated => '2009-09-13',
        :link => 'files/NoEjectDelay-2.0.0.pkg.zip',
        :body => <<EOS,
<ul>
  <li>Stable release for Snow Leopard.</li>
</ul>
EOS
      },
      {
        :version => '1.1.0',
        :updated => '2008-05-26',
        :link => 'files/NoEjectDelay-1.1.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Minor Improvements.</li>
</ul>
EOS
      },
      {
        :version => '1.0.0',
        :updated => '2008-05-07',
        :link => 'files/NoEjectDelay-1.0.0.pkg.tar.gz',
        :body => <<EOS,
<ul>
  <li>Initial release.</li>
</ul>
EOS
      },
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/noejectdelay.html', Noejectdelay)
