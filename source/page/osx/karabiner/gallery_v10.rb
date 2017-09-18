#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class GalleryV10 < KarabinerBase
  def body_classes
    [
      {:class => 'with-page-top-fixed-alert'},
    ]
  end

  def title
    'Part of useful existing settings - ' + super()
  end

  def tabs_definition
    [
      {
        :href => '#change-either-the-left-or-right-modifier-key',
        :name => 'Change either the left or right modifier key',
      },
      {
        :href => '#use-emacs-key-bindings-everywhere',
        :name => 'Use Emacs key bindings everywhere',
      },
      {
        :href => '#avoid-unintended-command-q',
        :name => 'Avoid unintended Command-Q',
      },
      {
        :href => '#simple-vi-mode-v2',
        :name => 'Simple Vi Mode v2',
      },
      {
        :href => '#mouse-keys-mode-v2',
        :name => 'Mouse Keys Mode v2',
      },
      {
        :href => '#operate-finder-by-hjkl-keys',
        :name => 'Operate Finder by hjkl keys',
      },
      {
        :href => '#launcher-mode-v2',
        :name => 'Launcher Mode v2',
      },
      {
        :href => '#disable-built-in-keyboard-if-external-keyboard-exists',
        :name => 'Disable the built-in keyboard if an external keyboard exists.',
      },
      {
        :href => '#ignore-bouncing',
        :name => 'Ignore bouncing (chattering) events',
      },
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/gallery_v10.html', GalleryV10)
