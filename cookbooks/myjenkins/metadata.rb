name             'myjenkins'
maintainer       'Maruti Nandan Pandya'
maintainer_email 'mnandanpandya@gmail.com'
license          'All rights reserved'
description      'Installs/Configures jenkins'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'rvm', '~> 0.9.1'
depends 'jenkins', '2.6.0'
depends 'apt', '5.0.0'
