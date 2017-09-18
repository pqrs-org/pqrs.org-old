#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Faq < KarabinerBase
  def body_classes
    [
      {:class => 'with-page-top-fixed-alert'},
    ]
  end

  def current_nav_path
    '/osx/karabiner/faq.html'
  end

  def title
    'Q&A - ' + super()
  end

  def tabs_definition
    [
      {
        :href => '#general',
        :name => 'general',
      },
      {
        :href => '#trackpad',
        :name => 'trackpad',
      },
      {
        :href => '#capslock',
        :name => 'caps lock key',
      },
      {
        :href => '#fn',
        :name => 'fn key',
      },
      {
        :href => '#eject',
        :name => 'eject key',
      },
      {
        :href => '#power',
        :name => 'power key',
      },
      {
        :href => '#shift',
        :name => 'shift key',
      },
      {
        :href => '#unicode-hex-input',
        :name => 'unicode hex input',
      },
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/faq.html', Faq)
