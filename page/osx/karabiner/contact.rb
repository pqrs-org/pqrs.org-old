#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class Contact < Keyremap4macbookBase
end

PqrsUtil.make_page('/osx/karabiner/contact.html', Contact)
