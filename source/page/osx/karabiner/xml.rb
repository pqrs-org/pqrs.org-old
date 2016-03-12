#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Xml < KarabinerBase
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
        :name_l10n => {
          :en => 'examples',
          :ja => 'examples',
        }
      },
      {
        :href => '#examples',
        :name_l10n => {
          :en => 'examples',
          :ja => 'examples',
        },
      },
      {
        :href => '#autogen-examples',
        :name_l10n => {
          :en => 'existing settings',
          :ja => 'existing settings',
        },
      },
      {
        :name_l10n => {
          :en => 'basic',
          :ja => 'basic',
        }
      },
      {
        :href => '#basic-syntax',
        :name_l10n => {
          :en => 'basic syntax',
          :ja => 'basic syntax',
        }
      },
      {
        :name_l10n => {
          :en => 'filters',
          :ja => 'filters',
        }
      },
      {
        :href => '#filter-overview',
        :name_l10n => {
          :en => 'overview',
          :ja => 'overview',
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
        :href => '#windownamedef',
        :name_l10n => {
          :en => 'specify window name (window title)',
          :ja => 'specify window name (window title)',
        }
      },
      {
        :href => '#uielementroledef',
        :name_l10n => {
          :en => 'specify ui element role',
          :ja => 'specify ui element role',
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
          :en => 'specify input source',
          :ja => 'specify input source',
        }
      },
      {
        :name_l10n => {
          :en => 'special key code',
          :ja => 'special key code',
        }
      },
      {
        :href => '#vkopenurldef',
        :name_l10n => {
          :en => 'launch app / open url / execute shell commands',
          :ja => 'launch app / open url / execute shell commands',
        }
      },
      {
        :href => '#vkchangeinputsourcedef',
        :name_l10n => {
          :en => 'change input source',
          :ja => 'change input source',
        }
      },
      {
        :name_l10n => {
          :en => 'advanced features',
          :ja => 'advanced features',
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
      {
        :href => '#modifier',
        :name_l10n => {
          :en => 'new virtual modifier definition',
          :ja => 'new virtual modifier definition',
        }
      },
      {
        :href => '#expand',
        :name_l10n => {
          :en => "expand prepared settings's capabilities",
          :ja => "expand prepared settings's capabilities",
        }
      },
      {
        :href => '#prepared',
        :name_l10n => {
          :en => 'modify prepared settings',
          :ja => 'modify prepared settings',
        }
      },
      {
        :name_l10n => {
          :en => '<autogen> syntax',
          :ja => '<autogen> syntax',
        }
      },
      {
        :href => '#autogen-syntax',
        :name_l10n => {
          :en => '<autogen> syntax',
          :ja => '<autogen> syntax',
        }
      },
      {
        :href => '#filter-syntax',
        :name_l10n => {
          :en => 'filters',
          :ja => 'filters',
        }
      },
      {
        :name_l10n => {
          :en => 'tips',
          :ja => 'tips',
        }
      },
      {
        :href => '#tips-unicode-hex-input',
        :name_l10n => {
          :en => 'unicode hex input',
          :ja => 'unicode hex input',
        }
      },
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/xml.html', Xml)
