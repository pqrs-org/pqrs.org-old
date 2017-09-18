#!/usr/bin/ruby

class PqrsLayout < Mustache
  attr_accessor :body_class

  def nav
    eval "class PqrsNav < #{@body_class}; end"
    nav = Nav.new
    nav.render
  end

  def body
    toppage = @body_class.new
    toppage.render
  end
end
