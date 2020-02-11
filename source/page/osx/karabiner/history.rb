#!/usr/bin/ruby
require '../../../classes/bootstrap.rb'
require './karabiner_base.rb'

class History < KarabinerBase
  def og_description
    'Version History'
  end

  def title
    'Version History - ' + super()
  end

  def histories
    [
      {
        :version => 'Karabiner-Elements 12.9.0',
        :updated => '2020-01-18',
        :link => 'https://github.com/pqrs-org/Karabiner-Elements/releases/download/v12.9.0/Karabiner-Elements-12.9.0.dmg',
        :body => update_description('karabiner', '12.9.0'),
      },
      {
        :version => 'Karabiner-Elements 12.8.0',
        :updated => '2019-11-17',
        :link => 'https://github.com/pqrs-org/Karabiner-Elements/releases/download/v12.8.0/Karabiner-Elements-12.8.0.dmg',
        :body => update_description('karabiner', '12.8.0'),
      },
      {
        :version => 'Karabiner-Elements 12.7.0',
        :updated => '2019-09-12',
        :link => 'https://github.com/pqrs-org/Karabiner-Elements/releases/download/v12.7.0/Karabiner-Elements-12.7.0.dmg',
        :body => update_description('karabiner', '12.7.0'),
      },
      {
        :version => 'Karabiner-Elements 12.6.0',
        :updated => '2019-08-16',
        :link => 'https://github.com/pqrs-org/Karabiner-Elements/releases/download/v12.6.0/Karabiner-Elements-12.6.0.dmg',
        :body => update_description('karabiner', '12.6.0'),
      },
      {
        :version => 'Karabiner-Elements 12.5.0',
        :updated => '2019-06-10',
        :link => 'https://github.com/pqrs-org/Karabiner-Elements/releases/download/v12.5.0/Karabiner-Elements-12.5.0.dmg',
        :body => update_description('karabiner', '12.5.0'),
      },
      {
        :version => 'Karabiner-Elements 12.4.0',
        :updated => '2019-05-14',
        :link => 'https://github.com/pqrs-org/Karabiner-Elements/releases/download/v12.4.0/Karabiner-Elements-12.4.0.dmg',
        :body => update_description('karabiner', '12.4.0'),
      },
      {
        :version => 'Karabiner-Elements 12.3.0',
        :updated => '2019-04-24',
        :link => 'https://github.com/pqrs-org/Karabiner-Elements/releases/download/v12.3.0/Karabiner-Elements-12.3.0.dmg',
        :body => update_description('karabiner', '12.3.0'),
      },
      {
        :version => 'Karabiner-Elements 12.2.0',
        :updated => '2019-02-01',
        :link => 'https://github.com/pqrs-org/Karabiner-Elements/releases/download/v12.2.0/Karabiner-Elements-12.2.0.dmg',
        :body => update_description('karabiner', '12.2.0'),
      },
      {
        :version => 'Karabiner-Elements 12.1.0',
        :updated => '2018-05-30',
        :link => 'https://github.com/pqrs-org/Karabiner-Elements/releases/download/v12.1.0/Karabiner-Elements-12.1.0.dmg',
        :body => update_description('karabiner', '12.1.0'),
      },
      {
        :version => 'Karabiner-Elements 12.0.0',
        :updated => '2018-04-12',
        :link => 'https://github.com/pqrs-org/Karabiner-Elements/releases/download/v12.0.0/Karabiner-Elements-12.0.0.dmg',
        :body => update_description('karabiner', '12.0.0'),
      },
      {
        :version => 'Karabiner-Elements 11.6.0',
        :updated => '2018-02-20',
        :link => 'https://github.com/pqrs-org/Karabiner-Elements/releases/download/v11.6.0/Karabiner-Elements-11.6.0.dmg',
        :body => update_description('karabiner', '11.6.0'),
      },
      {
        :version => 'Karabiner-Elements 11.5.0',
        :updated => '2017-12-30',
        :link => 'https://github.com/pqrs-org/Karabiner-Elements/releases/download/v11.5.0/Karabiner-Elements-11.5.0.dmg',
        :body => update_description('karabiner', '11.5.0'),
      },
      {
        :version => 'Karabiner-Elements 11.4.0',
        :updated => '2017-12-07',
        :link => 'https://github.com/pqrs-org/Karabiner-Elements/releases/download/v11.4.0/Karabiner-Elements-11.4.0.dmg',
        :body => update_description('karabiner', '11.4.0'),
      },
      {
        :version => 'Karabiner-Elements 11.3.0',
        :updated => '2017-11-12',
        :link => 'https://github.com/pqrs-org/Karabiner-Elements/releases/download/v11.3.0/Karabiner-Elements-11.3.0.dmg',
        :body => update_description('karabiner', '11.3.0'),
      },
      {
        :version => 'Karabiner-Elements 11.2.0',
        :updated => '2017-11-09',
        :link => 'https://github.com/pqrs-org/Karabiner-Elements/releases/download/v11.2.0/Karabiner-Elements-11.2.0.dmg',
        :body => update_description('karabiner', '11.2.0'),
      },
      {
        :version => 'Karabiner-Elements 11.1.0',
        :updated => '2017-10-04',
        :link => 'https://github.com/pqrs-org/Karabiner-Elements/releases/download/v11.1.0/Karabiner-Elements-11.1.0.dmg',
        :body => update_description('karabiner', '11.1.0'),
      },
      {
        :version => 'Karabiner-Elements 11.0.0',
        :updated => '2017-09-18',
        :link => 'https://github.com/pqrs-org/Karabiner-Elements/releases/download/v11.0.0/Karabiner-Elements-11.0.0.dmg',
        :body => update_description('karabiner', '11.0.0'),
      },
      {
        :version => 'Karabiner 10.22.0',
        :updated => '2016-10-31',
        :link => 'files/Karabiner-10.22.0.dmg',
        :body => update_description('karabiner', '10.22.0'),
      },
      {
        :version => 'Karabiner 10.21.0',
        :updated => '2016-07-05',
        :link => 'files/Karabiner-10.21.0.dmg',
        :body => update_description('karabiner', '10.21.0'),
      },
      {
        :version => '10.20.0',
        :updated => '2016-06-16',
        :link => 'files/Karabiner-10.20.0.dmg',
        :body => update_description('karabiner', '10.20.0'),
      },
      {
        :version => 'Karabiner 10.19.0',
        :updated => '2016-06-09',
        :link => 'files/Karabiner-10.19.0.dmg',
        :body => update_description('karabiner', '10.19.0'),
      },
      {
        :version => 'Karabiner 10.18.0',
        :updated => '2016-03-07',
        :link => 'files/Karabiner-10.18.0.dmg',
        :body => update_description('karabiner', '10.18.0'),
      },
      {
        :version => 'Karabiner 10.17.0',
        :updated => '2016-03-05',
        :link => 'files/Karabiner-10.17.0.dmg',
        :body => update_description('karabiner', '10.17.0'),
      },
      {
        :version => 'Karabiner 10.15.0',
        :updated => '2015-12-21',
        :link => 'files/Karabiner-10.15.0.dmg',
        :body => update_description('karabiner', '10.15.0'),
      },
      {
        :version => 'Karabiner 10.14.0',
        :updated => '2015-11-05',
        :link => 'files/Karabiner-10.14.0.dmg',
        :body => update_description('karabiner', '10.14.0'),
      },
      {
        :version => 'Karabiner 10.13.0',
        :updated => '2015-11-02',
        :link => 'files/Karabiner-10.13.0.dmg',
        :body => update_description('karabiner', '10.13.0'),
      },
      {
        :version => 'Karabiner 10.11.0',
        :updated => '2015-10-10',
        :link => 'files/Karabiner-10.11.0.dmg',
        :body => update_description('karabiner', '10.11.0'),
      },
      {
        :version => 'Karabiner 10.10.0',
        :updated => '2015-10-08',
        :link => 'files/Karabiner-10.10.0.dmg',
        :body => update_description('karabiner', '10.10.0'),
      },
      {
        :version => 'Karabiner 10.9.0',
        :updated => '2015-09-07',
        :link => 'files/Karabiner-10.9.0.dmg',
        :body => update_description('karabiner', '10.9.0'),
      },
      {
        :version => 'Karabiner 10.8.0',
        :updated => '2015-08-24',
        :link => 'files/Karabiner-10.8.0.dmg',
        :body => update_description('karabiner', '10.8.0'),
      },
      {
        :version => 'Karabiner 10.7.0',
        :updated => '2015-08-10',
        :link => 'files/Karabiner-10.7.0.dmg',
        :body => update_description('karabiner', '10.7.0'),
      },
      {
        :version => 'Karabiner 10.6.0',
        :updated => '2015-01-13',
        :link => 'files/Karabiner-10.6.0.dmg',
        :body => update_description('karabiner', '10.6.0'),
      },
      {
        :version => 'Karabiner 10.5.0',
        :updated => '2014-12-12',
        :link => 'files/Karabiner-10.5.0.dmg',
        :body => update_description('karabiner', '10.5.0'),
      },
      {
        :version => 'Karabiner 10.4.0',
        :updated => '2014-10-14',
        :link => 'files/Karabiner-10.4.0.dmg',
        :body => update_description('karabiner', '10.4.0'),
      },
      {
        :version => 'Karabiner 10.3.0',
        :updated => '2014-10-07',
        :link => 'files/Karabiner-10.3.0.dmg',
        :body => update_description('karabiner', '10.3.0'),
      },
      {
        :version => 'Karabiner 10.2.0',
        :updated => '2014-08-20',
        :link => 'files/Karabiner-10.2.0.dmg',
        :body => update_description('karabiner', '10.2.0'),
      },
      {
        :version => 'Karabiner 10.1.0',
        :updated => '2014-07-21',
        :link => 'files/Karabiner-10.1.0.dmg',
        :body => update_description('karabiner', '10.1.0'),
      },
      {
        :version => 'Karabiner 10.0.0',
        :updated => '2014-07-09',
        :link => 'files/Karabiner-10.0.0.dmg',
        :body => update_description('karabiner', '10.0.0'),
      },
      {
        :version => 'KeyRemap4MacBook 9.3.0',
        :updated => '2014-02-15',
        :link => 'files/KeyRemap4MacBook-9.3.0.dmg',
        :body => update_description('karabiner', '9.3.0'),
      },
      {
        :version => 'KeyRemap4MacBook 9.2.0',
        :updated => '2013-11-29',
        :link => 'files/KeyRemap4MacBook-9.2.0.dmg',
        :body => update_description('karabiner', '9.2.0'),
      },
      {
        :version => 'KeyRemap4MacBook 9.0.0',
        :updated => '2013-11-15',
        :link => 'files/KeyRemap4MacBook-9.0.0.dmg',
        :body => update_description('karabiner', '9.0.0'),
      },
      {
        :version => 'KeyRemap4MacBook 8.4.0',
        :updated => '2013-09-23',
        :link => 'files/KeyRemap4MacBook-8.4.0.dmg',
        :body => update_description('karabiner', '8.4.0'),
      },
      {
        :version => 'KeyRemap4MacBook 8.3.0',
        :updated => '2013-05-19',
        :link => 'files/KeyRemap4MacBook-8.3.0.dmg',
        :body => update_description('karabiner', '8.3.0'),
      },
      {
        :version => 'KeyRemap4MacBook 8.2.0',
        :updated => '2013-05-17',
        :link => 'files/KeyRemap4MacBook-8.2.0.dmg',
        :body => update_description('karabiner', '8.2.0'),
      },
      {
        :version => 'KeyRemap4MacBook 8.1.0',
        :updated => '2013-05-12',
        :link => 'files/KeyRemap4MacBook-8.1.0.dmg',
        :body => update_description('karabiner', '8.1.0'),
      },
      {
        :version => 'KeyRemap4MacBook 8.0.0',
        :updated => '2013-01-30',
        :link => 'files/KeyRemap4MacBook-8.0.0.dmg',
        :body => update_description('karabiner', '8.0.0'),
      },
      {
        :version => 'KeyRemap4MacBook 7.8.0',
        :updated => '2012-06-26',
        :link => 'files/KeyRemap4MacBook-7.8.0.dmg',
        :body => update_description('karabiner', '7.8.0'),
      },
      {
        :version => 'KeyRemap4MacBook 7.7.0',
        :updated => '2012-05-09',
        :link => 'files/KeyRemap4MacBook-7.7.0.dmg',
        :body => update_description('karabiner', '7.7.0'),
      },
      {
        :version => 'KeyRemap4MacBook 7.6.0',
        :updated => '2012-05-08',
        :link => 'files/KeyRemap4MacBook-7.6.0.dmg',
        :body => update_description('karabiner', '7.6.0'),
      },
      {
        :version => 'KeyRemap4MacBook 7.5.0',
        :updated => '2011-11-02',
        :link => 'files/KeyRemap4MacBook-7.5.0.pkg.zip',
        :body => update_description('karabiner', '7.5.0'),
      },
      {
        :version => 'KeyRemap4MacBook 7.4.0',
        :updated => '2011-08-23',
        :link => 'files/KeyRemap4MacBook-7.4.0.pkg.zip',
        :body => update_description('karabiner', '7.4.0'),
      },
      {
        :version => 'KeyRemap4MacBook 7.3.0',
        :updated => '2011-05-17',
        :link => 'files/KeyRemap4MacBook-7.3.0.pkg.zip',
        :body => update_description('karabiner', '7.3.0'),
      },
      {
        :version => 'KeyRemap4MacBook 7.2.0',
        :updated => '2011-03-08',
        :link => 'files/KeyRemap4MacBook-7.2.0.pkg.zip',
        :body => update_description('karabiner', '7.2.0'),
      },
      {
        :version => 'KeyRemap4MacBook 7.1.0',
        :updated => '2011-02-22',
        :link => 'files/KeyRemap4MacBook-7.1.0.pkg.zip',
        :body => update_description('karabiner', '7.1.0'),
      },
      {
        :version => 'KeyRemap4MacBook 7.0.0',
        :updated => '2010-12-14',
        :link => 'files/KeyRemap4MacBook-7.0.0.pkg.zip',
        :body => update_description('karabiner', '7.0.0'),
      },
      {
        :version => 'KeyRemap4MacBook 6.9.0',
        :updated => '2010-09-14',
        :link => 'files/KeyRemap4MacBook-6.9.0.pkg.zip',
        :body => update_description('karabiner', '6.9.0'),
      },
      {
        :version => 'KeyRemap4MacBook 6.8.0',
        :updated => '2010-07-27',
        :link => 'files/KeyRemap4MacBook-6.8.0.pkg.zip',
        :body => update_description('karabiner', '6.8.0'),
      },
      {
        :version => 'KeyRemap4MacBook 6.7.0',
        :updated => '2010-05-15',
        :link => 'files/KeyRemap4MacBook-6.7.0.pkg.zip',
        :body => update_description('karabiner', '6.7.0'),
      },
      {
        :version => 'KeyRemap4MacBook 6.6.0',
        :updated => '2010-05-11',
        :link => 'files/KeyRemap4MacBook-6.6.0.pkg.zip',
        :body => update_description('karabiner', '6.6.0'),
      },
      {
        :version => 'KeyRemap4MacBook 6.5.0',
        :updated => '2010-03-16',
        :link => 'files/KeyRemap4MacBook-6.5.0.pkg.zip',
        :body => update_description('karabiner', '6.5.0'),
      },
      {
        :version => 'KeyRemap4MacBook 6.4.0',
        :updated => '2010-01-21',
        :link => 'files/KeyRemap4MacBook-6.4.0.pkg.zip',
        :body => update_description('karabiner', '6.4.0'),
      },
      {
        :version => 'KeyRemap4MacBook 6.3.0',
        :updated => '2010-01-05',
        :link => 'files/KeyRemap4MacBook-6.3.0.pkg.tar.gz',
        :body => update_description('karabiner', '6.3.0'),
      },
      {
        :version => 'KeyRemap4MacBook 6.2.0',
        :updated => '2009-11-12',
        :link => 'files/KeyRemap4MacBook-6.2.0.pkg.tar.gz',
        :body => update_description('karabiner', '6.2.0'),
      },
      {
        :version => 'KeyRemap4MacBook 6.1.0',
        :updated => '2009-11-11',
        :link => 'files/KeyRemap4MacBook-6.1.0.pkg.tar.gz',
        :body => update_description('karabiner', '6.1.0'),
      },
      {
        :version => 'KeyRemap4MacBook 6.0.0',
        :updated => '2009-10-08',
        :link => 'files/KeyRemap4MacBook-6.0.0.pkg.tar.gz',
        :body => update_description('karabiner', '6.0.0'),
      },
      {
        :version => 'KeyRemap4MacBook 5.1.0',
        :updated => '2008-05-26',
        :link => 'files/KeyRemap4MacBook-5.1.0.pkg.tar.gz',
        :body => update_description('karabiner', '5.1.0'),
      },
      {
        :version => 'KeyRemap4MacBook 5.0.0',
        :updated => '2008-05-07',
        :link => 'files/KeyRemap4MacBook-5.0.0.pkg.tar.gz',
        :body => update_description('karabiner', '5.0.0'),
      },
      {
        :version => 'KeyRemap4MacBook 4.0.0',
        :updated => '2008-04-02',
        :link => 'files/KeyRemap4MacBook-4.0.0.pkg.tar.gz',
        :body => update_description('karabiner', '4.0.0'),
      },
      {
        :version => 'KeyRemap4MacBook 3.2.0',
        :updated => '2008-02-29',
        :link => 'files/KeyRemap4MacBook-3.2.0.pkg.tar.gz',
        :body => update_description('karabiner', '3.2.0'),
      },
      {
        :version => 'KeyRemap4MacBook 3.1.0',
        :updated => '2008-02-18',
        :link => 'files/KeyRemap4MacBook-3.1.0.pkg.tar.gz',
        :body => update_description('karabiner', '3.1.0'),
      },
      {
        :version => 'KeyRemap4MacBook 3.0.0',
        :updated => '2008-02-04',
        :link => 'files/KeyRemap4MacBook-3.0.0.pkg.tar.gz',
        :body => update_description('karabiner', '3.0.0'),
      },
      {
        :version => 'KeyRemap4MacBook 2.3.0',
        :updated => '2007-12-15',
        :body => update_description('karabiner', '2.3.0'),
      },
      {
        :version => 'KeyRemap4MacBook 2.2.0',
        :updated => '2007-11-29',
        :body => update_description('karabiner', '2.2.0'),
      },
      {
        :version => 'KeyRemap4MacBook 2.1.0',
        :updated => '2007-11-15',
        :body => update_description('karabiner', '2.1.0'),
      },
      {
        :version => 'KeyRemap4MacBook 2.0.0',
        :updated => '2007-11-01',
        :body => update_description('karabiner', '2.0.0'),
      },
      {
        :version => 'KeyRemap4MacBook 1.5.0',
        :updated => '2007-10-10',
        :body => update_description('karabiner', '1.5.0'),
      },
      {
        :version => 'KeyRemap4MacBook 1.4.0',
        :updated => '2007-09-09',
        :body => update_description('karabiner', '1.4.0'),
      },
      {
        :version => 'KeyRemap4MacBook 1.3.0',
        :updated => '2007-08-15',
        :body => update_description('karabiner', '1.3.0'),
      },
      {
        :version => 'KeyRemap4MacBook 1.2.0',
        :updated => '2007-06-10',
        :body => update_description('karabiner', '1.2.0'),
      },
      {
        :version => 'KeyRemap4MacBook 1.0.2',
        :updated => '2007-02-05',
        :body => update_description('karabiner', '1.0.2'),
      },
      {
        :version => 'KeyRemap4MacBook 1.0.1',
        :updated => '2006-10-09',
        :body => update_description('karabiner', '1.0.1'),
      },
    ]
  end
end

PqrsUtil.make_page('/osx/karabiner/history.html', History)
