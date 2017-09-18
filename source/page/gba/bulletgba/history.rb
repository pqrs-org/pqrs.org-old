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
        :link => 'files/bulletgba-5.0.rom.gba.zip',
        :source => 'files/bulletgba-5.0.tar.gz',
        :body => <<EOS,
<ul>
<li>Added sound composed by <a href="http://www.nullsleep.com/" target="_blank">Nullsleep</a>.</li>
<li>Improved graphic resources.</li>
<li>Adjusted the level design of Shooting Mode.</li>
<li>Improved BulletML handling.</li>
<li>Added some BulletML.</li>
</ul>
EOS
      },
      {
        :version => '4.0',
        :updated => '2006-05-29',
        :link => 'files/bulletgba-4.0.rom.gba.zip',
        :source => 'files/bulletgba-4.0.tar.gz',
        :body => <<EOS,
<ul>
<li>Added "Replay" feature. You can record your game play into SRAM. ("Challenge &amp; Shooting Mode")</li>
<li>Added demo replay data.</li>
<li>Added Shooting Mode Level 4.</li>
<li>Improved font graphic.</li>
</ul>
EOS
      },
      {
        :version => '3.0',
        :updated => '2006-05-02',
        :link => 'files/bulletgba-3.0.rom.gba.zip',
        :source => 'files/bulletgba-3.0.tar.gz',
        :body => <<EOS,
<ul>
<li>Added Shooting Mode.</li>
<li>Improved graphic resources.</li>
<li>Improved BulletML handling.</li>
</ul>
EOS
      },
      {
        :version => '2.0',
        :updated => '2006-04-08',
        :link => 'files/bulletgba-2.0.rom.gba.zip',
        :source => 'files/bulletgba-2.0.tar.gz',
        :body => <<EOS,
<ul>
<li>Improved sprite handling. (less flicker, less vanishing of sprite.)</li>
<li>Added slow mode. (a.k.a. kakusei in Espgaluda.) You can toggle slow mode by press START or SELECT.</li>
<li>Added Challenge Mode.</li>
<li>Added BulletsMorph.</li>
</ul>
EOS
      },
      {
        :version => '1.1',
        :updated => '2006-03-09',
        :link => 'files/bulletgba-1.1.gba.zip',
        :source => 'files/bulletgba-1.1.tar.gz',
        :body => <<EOS,
<ul>
<li>Added some BulletML.</li>
<li>Optimized game engine.</li>
<li>Some minor improvements.</li>
</ul>
EOS
      },
      {
        :version => '1.0',
        :updated => '2006-02-27',
        :link => 'files/bulletgba-1.0.gba.zip',
        :source => 'files/bulletgba-1.0.tar.gz',
        :body => <<EOS,
<ul>
<li>Initial release.</li>
</ul>
EOS
      },
    ]
  end
end

PqrsUtil.make_page('/gba/bulletgba/history.html', History)
