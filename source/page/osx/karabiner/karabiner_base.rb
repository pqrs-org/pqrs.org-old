#!/usr/bin/ruby
# -*- coding: utf-8 -*-

class KarabinerBase < PqrsBase
  def title
    'Karabiner-Elements - Software for macOS'
  end

  def og_title
    'Karabiner-Elements'
  end

  def og_description
    'A powerful and stable keyboard customizer for macOS'
  end

  def og_image
    'https://pqrs.org/img/icon/osx/karabiner.png'
  end

  def navs_left_data
    [
      {
        :href => '/osx/karabiner/index.html',
        :name => 'Karabiner-Elements',
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
              :href => '/osx/karabiner/help.html',
              :name => 'Help',
            },
            {
              :href => '/osx/karabiner/json.html',
              :name => 'karabiner.json Reference Manual',
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
