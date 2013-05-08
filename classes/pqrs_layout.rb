#!/usr/bin/ruby

class PqrsLayout < Mustache
  attr_accessor :body_class
  attr_accessor :language

  def nav
    eval "class PqrsNav < #{@body_class}; end"
    nav = Nav.new
    nav.language = @language
    nav.render
  end

  def body
    toppage = @body_class.new
    toppage.language = @language
    toppage.render
  end
end
