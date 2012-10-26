#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require 'keyremap4macbook_base.rb'

class Faq < Keyremap4macbookBase
  def current_nav_path
    '/macosx/keyremap4macbook/faq.html'
  end

  def tabs_definition
    [
     {
       :tab => 'general',
       :href => '/macosx/keyremap4macbook/faq.html',
       :name_l10n => {
         :en => 'general',
         :ja => '全般',
       }
     },
     {
       :tab => 'trackpad',
       :href => '/macosx/keyremap4macbook/faq-trackpad.html',
       :name_l10n => {
         :en => 'trackpad',
         :ja => 'trackpad',
       }
     },
     {
       :tab => 'capslock',
       :href => '/macosx/keyremap4macbook/faq-capslock.html',
       :name_l10n => {
         :en => 'caps lock key',
         :ja => 'caps lockキー',
       }
     },
     {
       :tab => 'fn',
       :href => '/macosx/keyremap4macbook/faq-fn.html',
       :name_l10n => {
         :en => 'fn key',
         :ja => 'fnキー',
       }
     },
     {
       :tab => 'eject',
       :href => '/macosx/keyremap4macbook/faq-eject.html',
       :name_l10n => {
         :en => 'eject key',
         :ja => 'ejectキー',
       }
     },
     {
       :tab => 'power',
       :href => '/macosx/keyremap4macbook/faq-power.html',
       :name_l10n => {
         :en => 'power key',
         :ja => '電源ボタン',
       }
     },
    ]
  end
end

Faq.new.tabs_definition.each do |t|
  eval <<-EOS
  class Faq_#{t[:tab]} < Faq
    @template_file = File.dirname(__FILE__) + '/faq.mustache'
    def current_tab_#{t[:tab]}
      true
    end
  end
  EOS
  eval "PqrsUtil.make_page('#{t[:href]}', Faq_#{t[:tab]})"
end
