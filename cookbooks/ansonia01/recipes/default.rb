#
# Cookbook Name:: ansonia01
# Recipe:: default
#
# Copyright 2011, Matt Kangas
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

remote_directory "/var/www/ansonia01.com" do
  source "ansonia01.com"
  files_backup 0
  overwrite true
  purge false
end

cookbook_file "/etc/nginx/sites-available/000-default" do
  source "etc.nginx/000-default.conf"
  backup 0
  mode '0644'
end

# cookbook_file "/etc/nginx/sites-available/100-p16blog" do
#   source "etc.nginx/100-p16blog_com.conf"
#   backup 0
#   mode '0644'
# end

# -----------------------
# Nginx
# -----------------------

include_recipe "nginx"

# Update symlinks in /etc/nginx/sites-enabled
nginx_site "default" do
  enable false
end
nginx_site "000-default" do
  enable true
end
nginx_site "100-p16blog" do
  enable false
end

service "nginx" do
  action :reload
end
