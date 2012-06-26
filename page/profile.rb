#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../classes/bootstrap.rb'

class Profile < PqrsBase
  def title
    case @language
    when :en
      'Profile'
    when :ja
      'プロフィール'
    end
  end
end

PqrsUtil.make_page('/profile.html', Profile)
