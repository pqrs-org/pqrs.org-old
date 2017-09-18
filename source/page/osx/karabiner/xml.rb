#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Xml < KarabinerBase
  def body_classes
    [
      {:class => 'with-page-top-fixed-alert'},
    ]
  end

  def current_nav_path
    '/osx/karabiner/xml.html'
  end

  def enable_prettify
    true
  end

  def title
    'private.xml Reference Manual - ' + super()
  end

  def tabs_definition
    [
      {
        :name => 'examples',
      },
      {
        :href => '#examples',
        :name => 'examples',
      },
      {
        :href => '#autogen-examples',
        :name => 'existing settings',
      },
      {
        :name => 'basic',
      },
      {
        :href => '#basic-syntax',
        :name => 'basic syntax',
      },
      {
        :name => 'filters',
      },
      {
        :href => '#filter-overview',
        :name => 'overview',
      },
      {
        :href => '#appdef',
        :name => 'specify application',
      },
      {
        :href => '#bundleidentifieroverridedef',
        :name => 'override the bundle identifier',
      },
      {
        :href => '#windownamedef',
        :name => 'specify window name (window title)',
      },
      {
        :href => '#uielementroledef',
        :name => 'specify ui element role',
      },
      {
        :href => '#devicedef',
        :name => 'specify device',
      },
      {
        :href => '#inputsourcedef',
        :name => 'specify input source',
      },
      {
        :name => 'special key code',
      },
      {
        :href => '#vkopenurldef',
        :name => 'launch app / open url / execute shell commands',
      },
      {
        :href => '#vkchangeinputsourcedef',
        :name => 'change input source',
      },
      {
        :name => 'advanced features',
      },
      {
        :href => '#include',
        :name => 'include external XML',
      },
      {
        :href => '#replacementdef',
        :name => 'string replacement',
      },
      {
        :href => '#keycode',
        :name => 'new keycode definition',
      },
      {
        :href => '#modifier',
        :name => 'new virtual modifier definition',
      },
      {
        :href => '#expand',
        :name => "expand prepared settings's capabilities",
      },
      {
        :href => '#prepared',
        :name => 'modify prepared settings',

      },
      {
        :name => '<autogen> syntax',
      },
      {
        :href => '#autogen-syntax',
        :name => '<autogen> syntax',
      },
      {
        :href => '#filter-syntax',
        :name => 'filters',
      },
      {
        :name => 'tips',
      },
      {
        :href => '#tips-unicode-hex-input',
        :name => 'unicode hex input',
      },
      {
        :href => '#tips-string-input',
        :name => 'string input',
      },
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/xml.html', Xml)
