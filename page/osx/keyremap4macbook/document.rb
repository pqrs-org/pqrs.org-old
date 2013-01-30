#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require 'keyremap4macbook_base.rb'

class Document < Keyremap4macbookBase
  def current_nav_path
    '/macosx/keyremap4macbook/document.html'
  end

  def tabs_definition
    [
     {
       :tab => 'remapping',
       :href => '/macosx/keyremap4macbook/document.html',
       :name_l10n => {
         :en => 'Usage',
         :ja => '使い方',
       }
     },
     {
       :tab => 'keyrepeat',
       :href => '/macosx/keyremap4macbook/document-key-repeat.html',
       :name_l10n => {
         :en => 'key repeat rate',
         :ja => 'キーリピート',
       }
     },
     {
       :tab => 'uninstall',
       :href => '/macosx/keyremap4macbook/document-uninstall.html',
       :name_l10n => {
         :en => 'Uninstall',
         :ja => 'アンインストール方法',
       }
     },
     {
       :tab => 'eventviewer',
       :href => '/macosx/keyremap4macbook/document-eventviewer.html',
       :name_l10n => {
         :en => 'eventviewer',
         :ja => 'イベントビューア',
       }
     },
     {
       :tab => 'privatexml',
       :href => '/macosx/keyremap4macbook/document-private-xml.html',
       :name_l10n => {
         :en => 'how to add your own settings',
         :ja => '設定の追加',
       }
     },
     {
       :tab => 'misc',
       :href => '/macosx/keyremap4macbook/document-misc.html',
       :name_l10n => {
         :en => 'misc',
         :ja => 'その他',
       }
     },
    ]
  end
end

Document.new.tabs_definition.each do |t|
  eval <<-EOS
  class Document_#{t[:tab]} < Document
    @template_file = File.dirname(__FILE__) + '/document.mustache'
    def current_tab_#{t[:tab]}
      true
    end
  end
  EOS
  eval "PqrsUtil.make_page('#{t[:href]}', Document_#{t[:tab]})"
end
