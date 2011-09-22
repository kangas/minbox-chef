maintainer       "Matt Kangas"
maintainer_email "kangas@gmail.com"
license          "Apache 2.0"
description      "Installs/Configures minbox-ops"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"

%w{ ubuntu debian centos redhat fedora }.each do |os|
  supports os
end

%w{ sudo users }.each do |cookbook|
  depends cookbook
end
