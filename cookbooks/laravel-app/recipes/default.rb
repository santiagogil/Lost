#
# Cookbook Name:: laravel-app
# Recipe:: default
#
# Copyright 2012, Gustavo Gama
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

#app_name = 'laravel'
#app_config = node[app_name]

# Set up the Nginx virtual host
#web_app app_name do 
#  template "#{app_name}.conf.erb" 
#end

include_recipe "nginx"

nginx_site "default" do
  	enable false
end

app_name = "laravel"

template "#{node['nginx']['dir']}/sites-available/#{app_name}" do
	source "#{app_name}.conf.erb"
	mode 644
	variables(
	  	:application_name => app_name
	)
end

nginx_site app_name do
	enable true
end

