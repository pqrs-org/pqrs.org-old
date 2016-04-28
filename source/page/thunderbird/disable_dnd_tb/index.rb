#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './disable_dnd_tb_base.rb'

class Index < DisableDndTbBase
  def histories
    data = [
      {
        :version => '3.0.0',
        :link => 'files/disable_dnd_tb-3.0.0.xpi',
        :updated => '2016-04-28',
        :body_l10n => {
          :en => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Update for Thunderbird 45+.
    </div>
  </div>

</div>
EOS
          :ja => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Thunderbird 45以降に対応。
    </div>
  </div>

</div>
EOS
        },
      },
      {
        :version => '2.1.0',
        :link => 'files/disable_dnd_tb-2.1.0.xpi',
        :updated => '2011-06-29',
        :body_l10n => {
          :en => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Update for Thunderbird 5+.
    </div>
  </div>

</div>
EOS
          :ja => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Thunderbird 5以降に対応。
    </div>
  </div>

</div>
EOS
        },
      },
      {
        :version => '2.0.0',
        :link => 'files/disable_dnd_tb-2.0.0.xpi',
        :updated => '2010-08-14',
        :body_l10n => {
          :en => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Update for Thunderbird 3.
    </div>
  </div>

</div>
EOS
          :ja => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Thunderbird 3以降に対応。
    </div>
  </div>

</div>
EOS
        },
      },
      {
        :version => '1.0.1',
        :link => 'files/disable_dnd_tb-1.0.1.xpi',
        :updated => '2007-04-12',
        :body_l10n => {
          :en => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Update for Thunderbird 2.
    </div>
  </div>

</div>
EOS
          :ja => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-improved">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Thunderbird 2以降に対応。
    </div>
  </div>

</div>
EOS
        },
      },
      {
        :version => '1.0.0',
        :link => 'files/disable_dnd_tb-1.0.0.xpi',
        :updated => '2007-02-28',
        :body_l10n => {
          :en => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-new">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      Initial release.
    </div>
  </div>

</div>
EOS
          :ja => <<EOS,
<div class="update-description">

  <div class="update-description-item update-description-item-new">
    <div class="update-description-label"></div>
    <div class="update-description-body">
      最初のリリース。
    </div>
  </div>

</div>
EOS
        },
      },
    ]
    set_l10n_text(data)
  end
end

PqrsUtil.make_page('/thunderbird/extensions/disable_dnd_tb/index.html', Index)
