#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './dcgnuboy_base.rb'

class History < DcgnuboyBase
  def histories
    data = [
      {
        :version => '1.0.3-0.6',
        :updated => '2002-08-04',
        :body => <<EOS,
<ul>
<li>Improved Video emulation.</li>
<li>Improved Sound emulation.</li>
</ul>
EOS
      },
      {
        :version => '1.0.3-0.5',
        :updated => '2002/05/29',
        :body => '<p>Some improvements.</p>',
      },
    ]
  end
end

PqrsUtil.make_page('/dreamcast/software/dcgnuboy/history.html', History)
