maintainer       "Matt Kangas"
maintainer_email "kangas@gmail.com"
license          "Apache 2.0"
description      "Installs/Configures webapp"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"

recipe           "webapp", "Loads application databags and selects recipes to use"
recipe           "webapp::static", "Deploys a static website specified in a data bag with the deploy_revision resource"

