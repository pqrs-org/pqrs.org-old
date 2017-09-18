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
        :link => 'files/vulkanon-2.1.rom.gba.zip',
        :source => 'files/vulkanon-2.1.tar.gz',
        :body => <<EOS,
<ul>
<li>Fixed a bug that screen is not drawn properly when Vulkanon is launched from the G6 Flash cartridge.</li>
<li>Changed some sound-effects.</li>
</ul>
EOS
      },
      {
        :version => '2.0',
        :updated => '2006-08-31',
        :link => 'files/vulkanon-2.0.rom.gba.zip',
        :source => 'files/vulkanon-2.0.tar.gz',
        :body => <<EOS,
<ul>
<li>Added sound composed by <a href="http://www.nullsleep.com/" target="_blank">Nullsleep</a>.</li>
<li>Adjusted level design.</li>
</ul>
EOS
      },
      {
        :version => '1.0',
        :updated => '2006-07-26',
        :link => 'files/vulkanon-1.0.rom.gba.zip',
        :source => 'files/vulkanon-1.0.tar.gz',
        :body => <<EOS,
<ul>
<li>Initial release.</li>
</ul>
EOS
      },
    ]
  end
end

PqrsUtil.make_page('/gba/vulkanon/history.html', History)
