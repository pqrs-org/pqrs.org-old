#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../classes/bootstrap.rb'

class Toppage < PqrsBase
  def title
    'pqrs.org'
  end

  def sections
    data = [
      # ============================================================
      {
        :id => 'os-x',
        :name => 'OS X',
        :rows => [
          {
            :name => 'Karabiner',
            :link => '/osx/karabiner/',
            :icon => '/img/icon/osx/karabiner-32.png',
            :body => <<EOS,
<p>A powerful and stable keyboard customizer for OS X.</p>
EOS
          },

          {
            :name => 'ShowyEdge',
            :link => '/osx/ShowyEdge/',
            :icon => '/img/icon/osx/ShowyEdge-32.png',
            :body => <<EOS,
<p>An Indicator of the current input source which has a very high visibility for OS X.</p>
EOS
          },
        ]
      },
      # ============================================================
      {
        :id => 'thunderbird',
        :name => 'Thunderbird',
        :rows => [
          {
            :name => 'Disable DragAndDrop',
            :link => '/thunderbird/extensions/disable_dnd_tb/',
            :icon => '/img/icon/thunderbird/default-32.png',
            :body => <<EOS,
<p>
A Thunderbird extension which disables drag and drop in the folder pane.
This extension prevents unintended folder movement.
</p>
EOS
          },
        ]
      },
      # ============================================================
      {
        :id => 'web-api',
        :name => 'Web API',
        :rows => [
          {
            :name => 'ImageLnk',
            :link => 'http://imagelnk.pqrs.org/',
            :icon => '/img/icon/web/imagelnk-32.png',
            :body => <<EOS,
<p>Web API to get a direct link of images from image pages.</p>
EOS
          },
        ]
      },
      # ============================================================
      {
        :id => 'game-boy-advance',
        :name => 'Game Boy Advance',
        :rows => [
          {
            :name => 'Vulkanon',
            :link => '/gba/vulkanon/',
            :icon => '/img/icon/gba/vulkanon-32.png',
            :body => <<EOS,
<p>A homebrew bullet hell shooter for Gameboy Advance.</p>
EOS
          },
          {
            :name => 'BulletGBA',
            :link => '/gba/bulletgba/',
            :icon => '/img/icon/gba/bulletgba-32.png',
            :body => <<EOS,
<p>A homebrew bullet hell simulator for Gameboy Advance.</p>
EOS
          },
        ]
      },
      # ============================================================
      {
        :id => 'dreamcast',
        :name => 'Dreamcast',
        :rows => [
          {
            :name => 'NesterDC',
            :link => '/dreamcast/software/nesterdc/',
            :body => <<EOS,
<p>NES emulator for Dreamcast.</p>
EOS
          },
          {
            :name => 'dcgnuboy',
            :link => '/dreamcast/software/dcgnuboy/',
            :body => <<EOS,
<p>Gameboy &amp; Gameboy Color emulator for Dreamcast.</p>
EOS
          },
        ]
      },
    ]
    data.each do |d|
      d[:rows] = d[:rows].each_slice(2).collect do |items| { :items => items } end
    end
  end
end

PqrsUtil.make_page('/index.html', Toppage)
