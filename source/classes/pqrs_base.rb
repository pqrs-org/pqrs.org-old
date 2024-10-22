#!/usr/bin/ruby
require 'rubygems'
require 'mustache'
require 'time'
require 'rmagick'
require 'digest/sha1'
require 'pathname'
require 'fileutils'

class PqrsBase < Mustache
  attr_accessor :path
  attr_accessor :body

  def title
    throw 'You must set title'
  end

  def og_title
    false
  end

  def og_description
    false
  end

  def og_image
    false
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
        :name => 'Profile',
      },
    ]
  end

  def set_nav_class(data)
    data.each_with_index do |v, k|
      if v[:dropdown].nil?
        v[:nav_class] = (current_nav_path == v[:href] ? 'active' : nil)
        data[k] = v
      else
        v[:nav_class] = 'dropdown'
        v[:dropdown][:items].each_with_index do |v1, k1|
          if current_nav_path == v1[:href]
            v[:nav_class] += ' active'
            v[:dropdown][:items][k1][:dropdown_nav_class] = 'active'
          end
        end
        data[k] = v

      end
    end
    data
  end

  def navs_left
    set_nav_class(navs_left_data)
  end

  def navs_right
    set_nav_class(navs_right_data)
  end

  def current_nav_path
    @path
  end

  def tabs_definition
    []
  end

  def set_tab_class(data)
    data.each_with_index do |v, k|
      v[:tab_class] = (@path == v[:href] ? 'active' : nil)
      data[k] = v
    end
    data
  end

  def tabs
    set_tab_class(tabs_definition)
  end

  def escape_html_without_render(text)
    text
      .gsub('&', '&amp;')
      .gsub('<', '&lt;')
      .gsub('>', '&gt;')
  end

  def escape_html(text)
    escape_html_without_render(render(text))
  end

  def strip_html(text)
    render(text).gsub(/>\s+/, '>').gsub(/\s+</, '<')
  end

  def strip_lines(text)
    render(text).split(/\n/).map(&:strip).join("\n")
  end

  def strip_indented_lines_without_render(text)
    text.split(/\n/).map { |l| l.strip[1..-1] }.join("\n")
  end

  def strip_indented_lines(text)
    strip_indented_lines_without_render(render(text))
  end

  def imgsrc(text)
    src = render(text).strip
    path = File.join(File.dirname(File.join($destination_directory, @path)), src)
    img = Magick::Image.read(path).first

    width = img.columns
    height = img.rows
    if /@2x\./ =~ File.basename(path)
      width /= 2
      height /= 2
    end

    "src=\"#{src}\" width=\"#{width}\" height=\"#{height}\""
  end

  def lightbox(text)
    @lightbox_id = 0 if @lightbox_id.nil?
    @lightbox_id += 1

    a = render(text).strip.split(/ /, 2)
    src = a[0].strip
    alt = a[1].strip
    id = 'lightbox-' + @lightbox_id.to_s

    path = File.join(File.dirname(File.join($destination_directory, @path)), src)
    img = Magick::Image.read(path).first
    margin = 60
    width = img.columns
    width /= 2 if /@2x\./ =~ File.basename(path)

    <<EOS
<a data-toggle="modal" href="##{id}" class="thumbnail">
  <img src="#{src}" alt="#{alt}" />
</a>
<div class="modal fade" id="#{id}" tabindex="#{@lightbox_id + 30_000}">
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

  def indented_json(text)
    '<pre class="prettyprint lang-json">' +
      escape_html_without_render(strip_indented_lines_without_render(text.strip)) +
      '</pre>'
  end

  def curly
    '{{'
  end

  def format_date(text)
    Time.parse(render(text)).strftime('%b %-d, %Y')
  end

  def format_date_rss(text)
    Time.parse(render(text)).strftime('%a, %d %b %Y %H:%M:%S %Z')
  end

  def slice_to_cols(data, number)
    result = []
    data.each_slice(number).each do |d|
      result << { :cols => d }
    end
    result
  end

  def assets(file_path)
    pn = Pathname.new(File.join($source_directory, file_path))

    file_path_sha1 = Digest::SHA1.hexdigest(file_path)
    file_sha1 = Digest::SHA1.file(pn.to_path).hexdigest

    constant_part = File.join('assets', pn.basename.to_s + '.' + file_path_sha1.to_s + '.')
    link = constant_part + file_sha1.to_s + pn.extname
    output_file_path = File.join($destination_directory, link)

    unless File.exist?(output_file_path)
      # Remove old files
      FileUtils.rm Dir.glob(File.join($destination_directory, constant_part + '*'))

      FileUtils.copy_file(pn.to_path, output_file_path)
    end

    '/' + link
  end

  def update_description(name, version)
    File.read(__dir__ + "/../../appcast-updater/update-descriptions/#{name}/#{version}.html")
  end
end
