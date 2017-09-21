#!/usr/bin/ruby
# -*- coding: utf-8 -*-

class KarabinerBase < PqrsBase
  def title
    'Karabiner - Software for macOS'
  end

  def navs_left_data
    [
      {
        :href => '/osx/karabiner/index.html',
        :name => 'Karabiner',
      },
      {
        :name => 'Documents',
        :dropdown => {
          :items => [
            {
              :href => '/osx/karabiner/document.html',
              :name => 'Manual',
            },
            {
              :href => '/osx/karabiner/source.html',
              :name => 'License and Source Code',
            },
            {
              :href => '/osx/karabiner/history.html',
              :name => 'Version History',
            },
          ]
        },
      },
      {
        :name => 'Archives',
        :dropdown => {
          :items => [
            {
              :href => '/osx/karabiner/seil.html',
              :name => 'Seil',
            },
            {
              :href => '/osx/karabiner/noejectdelay.html',
              :name => 'NoEjectDelay',
            },
            {
              :href => '/osx/karabiner/document_v10.html',
              :name => 'Manual for Karabiner-10.22.0',
            },
            {
              :href => '/osx/karabiner/gallery_v10.html',
              :name => 'Gallery',
            },
            {
              :href => '/osx/karabiner/xml.html',
              :name => 'private.xml',
            },
            {
              :href => '/osx/karabiner/faq.html',
              :name => 'Q&A',
            },
            {
              :href => '/osx/karabiner/list.html',
              :name => 'List of prepared settings',
            },
          ],
        },
      },
      {
        :href => '/osx/karabiner/pricing.html',
        :name => 'Pricing',
      },
      {
        :href => '/osx/karabiner/contact.html',
        :name => 'Contact',
      },
    ]
  end

  def enable_jquery_collapse_js
    true
  end
end
