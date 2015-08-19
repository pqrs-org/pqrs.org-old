#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Gallery < KarabinerBase
  def title
    case @language
    when :en
      'Part of useful existing settings - ' + super()
    when :ja
      '便利な既存の設定の一例 - ' + super()
    end
  end

  def tabs_definition
    [
      {
        :href => '#change-either-the-left-or-right-modifier-key',
        :name_l10n => {
          :en => 'Change either the left or right modifier key',
          :ja => '左右のいずれかのモディファイアを変更する',
        },
      },
      {
        :href => '#use-emacs-key-bindings-everywhere',
        :name_l10n => {
          :en => 'Use Emacs key bindings everywhere',
          :ja => 'Emacsのキーバインドをどこでも使えるようにする',
        },
      },
      {
        :href => '#avoid-unintended-command-q',
        :name_l10n => {
          :en => 'Avoid unintended Command-Q',
          :ja => '意図しないCommand-Qを防ぐ',
        },
      },
      {
        :href => '#simple-vi-mode-v2',
        :name_l10n => {
          :en => 'Simple Vi Mode v2',
          :ja => 'Simple Vi Mode v2',
        },
      },
      {
        :href => '#mouse-keys-mode-v2',
        :name_l10n => {
          :en => 'Mouse Keys Mode v2',
          :ja => 'Mouse Keys Mode v2',
        },
      },
      {
        :href => '#operate-finder-by-hjkl-keys',
        :name_l10n => {
          :en => 'Operate Finder by hjkl keys',
          :ja => 'hjklキーでFinderを操作する',
        },
      },
      {
        :href => '#launcher-mode-v2',
        :name_l10n => {
          :en => 'Launcher Mode v2',
          :ja => 'Launcher Mode v2',
        },
      },
      {
        :href => '#disable-built-in-keyboard-if-external-keyboard-exists',
        :name_l10n => {
          :en => 'Disable the built-in keyboard if an external keyboard exists.',
          :ja => '外付けキーボードが接続されている場合は内蔵キーボードを無効化する',
        },
      },
      {
        :href => '#ignore-bouncing',
        :name_l10n => {
          :en => 'Ignore bouncing (chattering) events',
          :ja => 'チャタリングの抑制',
        },
      },
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/gallery.html', Gallery)
