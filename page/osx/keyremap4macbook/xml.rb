#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './keyremap4macbook_base.rb'

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
       :href => '#examples',
       :name_l10n => {
         :en => 'examples',
         :ja => 'examples',
       },
     },
     {
       :href => '#basic-syntax',
       :name_l10n => {
         :en => 'basic syntax',
         :ja => 'basic syntax',
       }
     },
     {
       :href => '#appdef',
       :name_l10n => {
         :en => 'specify application',
         :ja => 'specify application',
       }
     },
     {
       :href => '#devicedef',
       :name_l10n => {
         :en => 'specify device',
         :ja => 'specify device',
       }
     },
     {
       :href => '#inputsourcedef',
       :name_l10n => {
         :en => 'input source',
         :ja => 'input source',
       }
     },
     {
       :href => '#vkopenurldef',
       :name_l10n => {
         :en => 'launch app / open url',
         :ja => 'launch app / open url',
       }
     },
     {
       :href => '#include',
       :name_l10n => {
         :en => 'include external XML',
         :ja => 'include external XML',
       }
     },
     {
       :href => '#replacementdef',
       :name_l10n => {
         :en => 'string replacement',
         :ja => 'string replacement',
       }
     },
     {
       :href => '#keycode',
       :name_l10n => {
         :en => 'new keycode definition',
         :ja => 'new keycode definition',
       }
     },
    ]
  end
end

PqrsUtil.make_page('/macosx/keyremap4macbook/xml.html', Xml)
