#
# Cookbook Name:: berkshelf
# Recipe:: api_server
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

include_recipe "berkshelf::_common"

rbenv_gem "berkshelf-api" do
  version node[:berkshelf][:api][:version]
  ruby_version node[:berkshelf][:ruby_version]
end

include_recipe "runit"

package "libarchive12"
package "libarchive-dev"

runit_service "berks-api"
