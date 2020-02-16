#!/usr/bin/ruby

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Json < KarabinerBase
  def enable_prettify
    true
  end

  def title
    'karabiner.json Reference Manual - ' + super()
  end

  def tabs_definition
    [
      {
        :href => '#location',
        :name => 'File location',
      },
      {
        :href => '#typical-complex_modifications-examples',
        :name => 'Typical complex_modifications examples',
      },
      {
        :name => 'Data structure',
      },
      {
        :href => '#root-data-structure',
        :name => 'karabiner.json data structure',
      },
      {
        :name => 'complex_modifications',
      },
      {
        :href => '#complex_modifications-data-structure',
        :name => 'Data structure',
      },
      {
        :href => '#complex_modifications-manipulator-priority',
        :name => 'Manipulator priority',
      },
      {
        :href => '#complex_modifications-manipulator-definition',
        :name => 'Manipulator definition',
      },
      {
        :href => '#from-event-definition',
        :name => 'from event definition',
      },
      {
        :href => '#from-event-definition-modifiers',
        :name => 'Modifiers in from event definition',
      },
      {
        :href => '#from-event-definition-examples',
        :name => 'Examples',
      },
      {
        :href => '#from-event-definition-modifiers-list',
        :name => 'The list of modifiers in from definition',
      },
      {
        :href => '#simultaneous',
        :name => 'Detail of simultaneous',
      },
      {
        :href => '#to-event-definition',
        :name => 'to event definition',
      },
      {
        :href => '#to-event-definition-modifiers-list',
        :name => 'The list of modifiers in to definition',
      },
      {
        :href => '#to-if-alone',
        :name => 'Detail of to_if_alone',
      },
      {
        :href => '#to-if-held-down',
        :name => 'Detail of to_if_held_down',
      },
      {
        :name => 'Condition definition',
      },
      {
        :href => '#condition-definition-frontmost-application',
        :name => 'condition definition frontmost_application_if and frontmost_application_unless',
      },
      {
        :href => '#condition-definition-device',
        :name => 'condition definition device_if and device_unless',
      },
      {
        :href => '#condition-definition-keyboard-type',
        :name => 'condition definition keyboard_type_if and keyboard_type_unless',
      },
      {
        :href => '#condition-definition-input-source',
        :name => 'condition definition input_source_if and input_source_unless',
      },
      {
        :href => '#condition-definition-variable',
        :name => 'condition definition variable_if and variable_unless',
      },
      {
        :href => '#condition-definition-event-changed',
        :name => 'condition definition event_changed_if and event_changed_unless',
      },
      {
        :name => 'Change mouse motion to scroll',
      },
      {
        :href => '#mouse-motion-to-scroll',
        :name => 'mouse_motion_to_scroll',
      },
      {
        :name => 'MultitouchExtension',
      },
      {
        :href => '#multitouch-extension',
        :name => 'MultitouchExtension integration',
      },
      {
        :name => 'Help',
      },
      {
        :href => '#virtual-modifier',
        :name => 'Virtual modifier',
      },
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/json.html', Json)
