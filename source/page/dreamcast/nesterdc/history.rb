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
        :body => <<EOS,
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
      },
      {
        :version => '7.0',
        :body => <<EOS,
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
      },
      {
        :version => '6.0',
        :body => <<EOS,
<ul>
  <li>Added bilinear filter.</li>
  <li>Added Game Genie feature.</li>
  <li>Improved Dreamcast controller handling by upgrading KOS.</li>
  <li>Tuned PPU emulation and N106 emulation.</li>
</ul>
EOS
      },
      {
        :version => '5.0',
        :body => <<EOS,
<ul>
  <li>Added full screen feature.</li>
  <li>Optimized emulation speed.</li>
  <li>Added 4 players support.</li>
  <li>Added VGA support.</li>
  <li>Added misc features.</li>
</ul>
EOS
      },
      {
        :version => '4.0',
        :body => <<EOS,
<ul>
  <li>CPU/PPU/APU/Mappers emulation were ported from unofficial nester.</li>
  <li>Added VMU state save/load feature.</li>
  <li>Added quick state save/load feature.</li>
  <li>Added misc features.</li>
</ul>
EOS
      },
    ]
  end
end

PqrsUtil.make_page('/dreamcast/software/nesterdc/history.html', History)
