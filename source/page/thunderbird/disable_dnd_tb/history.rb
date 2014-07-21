#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './disable_dnd_tb_base.rb'

class History < DisableDndTbBase
  def histories
    data = [
            {
              :version => '2.1.0',
              :updated => '2011-06-29',
              :body_l10n => {
                :en => '<p>Update for Thunderbird 5+.</p>',
                :ja => '<p>Thunderbird 5以降に対応。</p>',
              },
            },
            {
              :version => '2.0.0',
              :updated => '2010-08-14',
              :body_l10n => {
                :en => '<p>Update for Thunderbird 3.</p>',
                :ja => '<p>Thunderbird 3に対応。</p>',
              },
            },
            {
              :version => '1.0.1',
              :updated => '2007-04-12',
              :body_l10n => {
                :en => '<p>Update for Thunderbird 2.</p>',
                :ja => '<p>Thunderbird 2に対応。</p>',
              },
            },
            {
              :version => '1.0.0',
              :updated => '2007-02-28',
              :body_l10n => {
                :en => '<p>Initial release.</p>',
                :ja => '<p>最初のリリース。</p>',
              },
            },
           ]
    set_l10n_text(data)
  end
end

PqrsUtil.make_page('/thunderbird/extensions/disable_dnd_tb/history.html', History)
