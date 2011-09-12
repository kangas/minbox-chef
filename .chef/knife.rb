current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "kangas"
client_key               "#{current_dir}/kangas.pem"
validation_client_name   "minbox-validator"
validation_key           "#{current_dir}/minbox-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/minbox"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
