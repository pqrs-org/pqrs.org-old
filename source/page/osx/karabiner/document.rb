#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Document < KarabinerBase
  def current_nav_path
    '/osx/karabiner/document.html'
  end

  def enable_prettify
    true
  end

  def title
    'Manual - ' + super()
  end

  def tabs_definition
    [
      {
        :href => '#features',
        :name => 'Features',
      },
      {
        :href => '#usage',
        :name => 'Usage',
      },
      {
        :name => 'Configuration',
      },
      {
        :href => '#configuration-simple-modifications',
        :name => 'Simple Modifications',
      },
      {
        :href => '#configuration-complex-modifications',
        :name => 'Complex Modifications',
      },
      {
        :href => '#configuration-devices',
        :name => 'Choose devices',
      },
      {
        :href => '#configuration-keyboard-type',
        :name => 'Set keyboard type',
      },
      {
        :name => 'Operations',
      },
      {
        :href => '#quit',
        :name => 'How to quit',
      },
      {
        :href => '#uninstall',
        :name => 'Uninstall',
      },
      {
        :href => '#check-for-updates',
        :name => 'Check for updates',
      },
      {
        :href => '#eventviewer',
        :name => 'Eventviewer',
      },
      {
        :href => '#profiles',
        :name => 'Multiple profiles',
      },
      {
        :name => 'Misc.',
      },
      {
        :href => '#ignored-temporarily',
        :name => '`Device is ignored temporarily` alert',
      },
      {
        :href => '#implicit',
        :name => 'Implicit behavior',
      },
      {
        :href => '#event-modification-chaining',
        :name => 'Input event modification chaining',
      },
      {
        :href => '#command-line-interface',
        :name => 'Command line interface',
      },
      {
        :href => '#configuration-file-path',
        :name => 'The location of the configuration file',
      },
      {
        :href => '#security',
        :name => 'Security',
      },
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/document.html', Document)
