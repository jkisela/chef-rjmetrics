name              'build-essential'
maintainer        'Opscode, Inc.'
maintainer_email  'cookbooks@opscode.com'
license           'Apache 2.0'
description       'Installs C compiler / build tools'
version           '2.0.6'
recipe            'build-essential', 'Installs packages required for compiling C software from source.'

%w{ fedora redhat centos ubuntu debian amazon suse scientific oracle smartos}.each do |os|
  supports os, '>= 0.0.0'
end

supports 'mac_os_x', '>= 10.6.0'
supports 'mac_os_x_server', '>= 10.6.0'
suggests 'pkgutil', '>= 0.0.0' # Solaris 2
