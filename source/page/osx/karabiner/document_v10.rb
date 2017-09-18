#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class DocumentV10 < KarabinerBase
  def body_classes
    [
      {:class => 'with-page-top-fixed-alert'},
    ]
  end

  def current_nav_path
    '/osx/karabiner/document-v10.html'
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
        :href => '#usage',
        :name => 'Usage',
      },
      {
        :href => '#keyrepeat',
        :name => 'Change key repeat rate',
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
        :href => '#axnotifier',
        :name => 'AXNotifier',
      },
      {
        :href => '#eventviewer',
        :name => 'Eventviewer',
      },
      {
        :href => '#privatexml',
        :name => 'How to add your own settings',
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
        :name => 'Misc.',
      },
      {
        :href => '#multitouchextension',
        :name => 'Multi-touch extension',
      },
      {
        :href => '#profiles',
        :name => 'Multiple profiles',
      },
      {
        :href => '#commandlineinterface',
        :name => 'Command line interface',
      },
      {
        :href => '#preferences',
        :name => 'The location of the configuration file',
      },
      {
        :href => '#debugmode',
        :name => 'debug mode',
      },
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/document_v10.html', DocumentV10)
