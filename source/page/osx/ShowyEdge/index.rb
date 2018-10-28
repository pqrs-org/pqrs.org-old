#!/usr/bin/ruby
require '../../../classes/bootstrap.rb'

class Index < PqrsBase
  def title
    'ShowyEdge - Software for macOS'
  end

  def navs_left_data
    [
      {
        :href => '/osx/ShowyEdge/index.html',
        :name => 'ShowyEdge',
      },
    ]
  end

  def tabs_definition
    [
      {
        :href => '#installation',
        :name => 'Installation',
      },
      {
        :href => '#usage',
        :name => 'Usage',
      },
      {
        :href => '#quit',
        :name => 'How to quit',
      },
      {
        :href => '#uninstall',
        :name => 'Uninstall',
      },
      {
        :href => '#development',
        :name => 'Development',
      },
      {
        :href => '#history',
        :name => 'Version History',
      },
    ]
  end

  def histories
    [
      {
        :version => '3.3.0',
        :updated => '2018-10-28',
        :link => 'files/ShowyEdge-3.3.0.dmg',
        :body => update_description('showyedge', '3.3.0'),
      },
      {
        :version => '3.2.0',
        :updated => '2017-03-23',
        :link => 'files/ShowyEdge-3.2.0.dmg',
        :body => update_description('showyedge', '3.2.0'),
      },
      {
        :version => '3.1.0',
        :updated => '2016-04-17',
        :link => 'files/ShowyEdge-3.1.0.dmg',
        :body => update_description('showyedge', '3.1.0'),
      },
      {
        :version => '3.0.0',
        :updated => '2015-12-03',
        :link => 'files/ShowyEdge-3.0.0.dmg',
        :body => update_description('showyedge', '3.0.0'),
      },
      {
        :version => '2.2.0',
        :updated => '2015-08-30',
        :link => 'files/ShowyEdge-2.2.0.dmg',
        :body => update_description('showyedge', '2.2.0'),
      },
      {
        :version => '2.1.0',
        :updated => '2014-12-02',
        :link => 'files/ShowyEdge-2.1.0.dmg',
        :body => update_description('showyedge', '2.1.0'),
      },
      {
        :version => '2.0.0',
        :updated => '2014-08-24',
        :link => 'files/ShowyEdge-2.0.0.dmg',
        :body => update_description('showyedge', '2.0.0'),
      },
      {
        :version => '1.8.0',
        :updated => '2014-03-13',
        :link => 'files/ShowyEdge-1.8.0.dmg',
        :body => update_description('showyedge', '1.8.0'),
      },
      {
        :version => '1.7.0',
        :updated => '2013-10-18',
        :link => 'files/ShowyEdge-1.7.0.dmg',
        :body => update_description('showyedge', '1.7.0'),
      },
      {
        :version => '1.6.0',
        :updated => '2013-10-13',
        :link => 'files/ShowyEdge-1.6.0.dmg',
        :body => update_description('showyedge', '1.6.0'),
      },
      {
        :version => '1.4.0',
        :updated => '2013-06-16',
        :link => 'files/ShowyEdge-1.4.0.dmg',
        :body => update_description('showyedge', '1.4.0'),
      },
      {
        :version => '1.3.0',
        :updated => '2013-06-14',
        :link => 'files/ShowyEdge-1.3.0.dmg',
        :body => update_description('showyedge', '1.3.0'),
      },
    ]
  end
end

PqrsUtil.make_page('/osx/ShowyEdge/index.html', Index)
