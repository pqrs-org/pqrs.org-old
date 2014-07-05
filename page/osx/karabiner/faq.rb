#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Faq < Keyremap4macbookBase
  def current_nav_path
    '/osx/karabiner/faq.html'
  end

  def tabs_definition
    [
     {
       :href => '#general',
       :name_l10n => {
         :en => 'general',
         :ja => '全般',
       }
     },
     {
       :href => '#trackpad',
       :name_l10n => {
         :en => 'trackpad',
         :ja => 'trackpad',
       }
     },
     {
       :href => '#capslock',
       :name_l10n => {
         :en => 'caps lock key',
         :ja => 'caps lockキー',
       }
     },
     {
       :href => '#fn',
       :name_l10n => {
         :en => 'fn key',
         :ja => 'fnキー',
       }
     },
     {
       :href => '#eject',
       :name_l10n => {
         :en => 'eject key',
         :ja => 'ejectキー',
       }
     },
     {
       :href => '#power',
       :name_l10n => {
         :en => 'power key',
         :ja => '電源ボタン',
       }
     },
     {
       :href => '#shift',
       :name_l10n => {
         :en => 'shift key',
         :ja => 'シフトキー',
       }
     },
     {
       :href => '#unicode-hex-input',
       :name_l10n => {
         :en => 'unicode hex input',
         :ja => 'unicode hex input',
       }
     },
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/faq.html', Faq)
