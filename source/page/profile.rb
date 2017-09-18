#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../classes/bootstrap.rb'

class Profile < PqrsBase
  def title
    'Profile'
  end
end

PqrsUtil.make_page('/profile.html', Profile)
