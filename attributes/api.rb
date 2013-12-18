#
# Cookbook Name:: berkshelf
# Attribute:: api
#
# Copyright (C) 2013 Jamie Winsor
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_attribute "berkshelf::default"

default[:berkshelf][:api][:version]        = "1.0.0"
default[:berkshelf][:api][:port]           = 26200
default[:berkshelf][:api][:proxy_port]     = 80
default[:berkshelf][:api][:host]           = node[:fqdn]
default[:berkshelf][:api][:home]           = "#{node[:berkshelf][:home]}/api-server"
default[:berkshelf][:api][:install_method] = :gem
default[:berkshelf][:api][:git_repo]       = "https://github.com/berkshelf/berkshelf-api.git"
default[:berkshelf][:api][:git_revision]   = "HEAD"
default[:berkshelf][:api][:bin_path]       = "berks-api"
default[:berkshelf][:api][:config_path]    = "#{node[:berkshelf][:api][:home]}/config.json"
default[:berkshelf][:api][:log_min]        = 10
default[:berkshelf][:api][:config][:home_path] = node[:berkshelf][:api][:home]
