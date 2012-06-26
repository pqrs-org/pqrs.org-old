#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require 'keyremap4macbook_base.rb'

class Xml < Keyremap4macbookBase
  def current_nav_path
    '/macosx/keyremap4macbook/xml.html'
  end

  def enable_prettify
    true
  end

  def tabs_definition
    [
     {
       :tab => 'example',
       :href => '/macosx/keyremap4macbook/xml.html',
       :name_l10n => {
         :en => 'example',
         :ja => 'example',
       },
     },
     {
       :tab => 'basic',
       :href => '/macosx/keyremap4macbook/xml-basic.html',
       :name_l10n => {
         :en => 'basic',
         :ja => 'basic',
       }
     },
     {
       :tab => 'appdef',
       :href => '/macosx/keyremap4macbook/xml-appdef.html',
       :name_l10n => {
         :en => 'specify application',
         :ja => 'specify application',
       }
     },
     {
       :tab => 'devicedef',
       :href => '/macosx/keyremap4macbook/xml-devicedef.html',
       :name_l10n => {
         :en => 'specify device',
         :ja => 'specify device',
       }
     },
     {
       :tab => 'include',
       :href => '/macosx/keyremap4macbook/xml-include.html',
       :name_l10n => {
         :en => 'include external XML',
         :ja => 'include external XML',
       }
     },
     {
       :tab => 'replacementdef',
       :href => '/macosx/keyremap4macbook/xml-replacementdef.html',
       :name_l10n => {
         :en => 'string replacement',
         :ja => 'string replacement',
       }
     },
     {
       :tab => 'keycode',
       :href => '/macosx/keyremap4macbook/xml-keycode.html',
       :name_l10n => {
         :en => 'define new keycode',
         :ja => 'define new keycode',
       }
     },
    ]
  end
end

Xml.new.tabs_definition.each do |t|
  eval <<-EOS
  class Xml_#{t[:tab]} < Xml
    @template_file = File.dirname(__FILE__) + '/xml.mustache'
    def current_tab_#{t[:tab]}
      true
    end
  end
  EOS
  eval "PqrsUtil.make_page('#{t[:href]}', Xml_#{t[:tab]})"
end
