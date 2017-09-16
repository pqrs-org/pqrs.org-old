#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require 'rubygems'
require 'mustache'
require 'time'
require 'RMagick'
require 'digest/sha1'
require 'pathname'
require 'fileutils'

class PqrsBase < Mustache
  attr_accessor :language
  attr_accessor :path
  attr_accessor :body

  def title
    throw 'You must set title'
  end

  def body_classes
    []
  end

  def navs_left_data
    []
  end

  def navs_right_data
    [
      {
        :href => '/profile.html',
        :name_l10n => {
          :en => 'Profile',
          :ja => 'プロフィール',
        },
      },
    ]
  end

  def set_nav_class(data)
    data.each_with_index do |v,k|
      unless v[:dropdown].nil? then
        v[:nav_class] = 'dropdown'
        v[:dropdown][:items].each_with_index do |v1,k1|
          if current_nav_path() == v1[:href] then
            v[:nav_class] += ' active'
            v[:dropdown][:items][k1][:dropdown_nav_class] = 'active'
          end
        end
        data[k] = v

      else
        v[:nav_class] = (current_nav_path() == v[:href] ? 'active' : nil)
        data[k] = v
      end
    end
    data
  end

  def navs_left
    set_nav_class(set_l10n_text(navs_left_data))
  end

  def navs_right
    set_nav_class(set_l10n_text(navs_right_data))
  end

  def current_nav_path
    @path
  end

  def tabs_definition
    []
  end

  def set_tab_class(data)
    data.each_with_index do |v,k|
      v[:tab_class] = (@path == v[:href] ? 'active' : nil)
      data[k] = v
    end
    data
  end

  def tabs
    set_tab_class(set_l10n_text(tabs_definition))
  end

  def language_en
    @language == :en
  end
  def language_ja
    @language == :ja
  end

  def escape_html_without_render(text)
    text.
      gsub('&', '&amp;').
      gsub('<', '&lt;').
      gsub('>', '&gt;')
  end

  def escape_html(text)
    escape_html_without_render(render(text))
  end

  def strip_html(text)
    render(text).gsub(/>\s+/, '>').gsub(/\s+</, '<')
  end

  def strip_lines(text)
    render(text).split(/\n/).map {|l| l.strip}.join("\n")
  end

  def strip_indented_lines_without_render(text)
    text.split(/\n/).map {|l| l.strip[1..-1]}.join("\n")
  end

  def strip_indented_lines(text)
    strip_indented_lines_without_render(render(text))
  end

  def imgsrc(text)
    src = render(text).strip
    path = File.join(File.dirname(File.join($destination_directory, @path)), src)
    img = Magick::Image::read(path).first

    width = img.columns
    height = img.rows
    if /@2x\./ =~ File.basename(path) then
      width = width / 2
      height = height / 2
    end

    "src=\"#{src}\" width=\"#{width}\" height=\"#{height}\""
  end

  def lightbox(text)
    @lightbox_id = 0 if @lightbox_id.nil?
    @lightbox_id += 1

    a = render(text).strip.split(/ /, 2)
    src = a[0].strip
    alt = a[1].strip
    id = "lightbox-" + @lightbox_id.to_s

    path = File.join(File.dirname(File.join($destination_directory, @path)), src)
    img = Magick::Image::read(path).first
    margin = 60
    width = img.columns
    if /@2x\./ =~ File.basename(path) then
      width = width / 2
    end

    <<EOS
<a data-toggle="modal" href="##{id}" class="thumbnail">
  <img src="#{src}" alt="#{alt}" />
</a>
<div class="modal fade" id="#{id}" tabindex="#{@lightbox_id + 30000}">
  <div class="modal-dialog clickable" style="width: #{width + margin}px;">
    <div class="modal-content">
      <div class="modal-body">
        <img src="#{src}" alt="#{alt}" style="width: 100%" />
      </div>
    </div>
  </div>
</div>
EOS
  end

  def indented_xml(text)
    '<pre class="prettyprint lang-xml">' +
      escape_html_without_render(strip_indented_lines_without_render(text.strip)) +
      '</pre>'
  end

  def curly
    '{{'
  end

  def format_date(text)
    case language()
    when :en
      return Time.parse(render(text)).strftime('%b %-d, %Y')
    when :ja
      return Time.parse(render(text)).strftime('%Y年%-m月%-d日')
    else
      throw 'unknown language'
    end
  end

  def format_date_rss(text)
    return Time.parse(render(text)).strftime('%a, %d %b %Y %H:%M:%S %Z')
  end

  def set_l10n_text(hash)
    if hash.class == Array then
      hash.each_with_index do |v,k|
        hash[k] = set_l10n_text(v)
      end

    elsif hash.class == Hash then
      hash.each do |k,v|
        if /_l10n$/ =~ k.to_s then
          hash[k] = v[@language]
          if hash[k].nil? then
            throw "unknown language for #{k}: #{@language}"
          end
        else
          hash[k] = set_l10n_text(v)
        end
      end
    end

    hash
  end

  def slice_to_cols(data, number)
    result = []
    data.each_slice(number).each do |d|
      result << { :cols => d }
    end
    result
  end

  def cache_file(file_path)
    pn = Pathname.new(File.join($source_directory, file_path))

    file_path_sha1 = Digest::SHA1.hexdigest(file_path)
    file_sha1 = Digest::SHA1.file(pn.to_path).hexdigest

    cache_link_fixed = File.join('cache', pn.basename.to_s + '.' + file_path_sha1.to_s + '.')
    cache_link = cache_link_fixed + file_sha1.to_s + pn.extname
    cache_file_path = File.join($destination_directory, cache_link)

    unless File.exists?(cache_file_path)
      # Remove old files
      FileUtils.rm Dir.glob(File.join($destination_directory, cache_link_fixed + '*'))

      FileUtils.copy_file(pn.to_path, cache_file_path)
    end

    '/' + cache_link
  end
end
