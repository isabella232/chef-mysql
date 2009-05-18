#
# Cookbook Name:: mysql
# Attributes:: server
#
# Copyright 2008, Opscode, Inc.
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

mysql Mash.new unless attribute?("mysql")
mysql[:server_root_password] = "change_this_password" unless mysql.has_key?(:server_root_password)
mysql[:bind_address] = ipaddress unless mysql.has_key?(:bind_address)
mysql[:datadir] = "/srv/mysql" unless mysql.has_key?(:datadir)

mysql[:key_buffer]          = "250M" unless mysql.has_key?(:key_buffer)
mysql[:max_connections]     = "800" unless mysql.has_key?(:max_connections)
mysql[:wait_timeout]        = "180" unless mysql.has_key?(:wait_timeout)
mysql[:net_write_timeout]   = "30" unless mysql.has_key?(:net_write_timeout)
mysql[:net_write_timeout]   = "30" unless mysql.has_key?(:net_write_timeout)
mysql[:back_log]            = "128" unless mysql.has_key?(:back_log)
mysql[:table_cache]         = "128" unless mysql.has_key?(:table_cache)
mysql[:max_heap_table_size] = "32M" unless mysql.has_key?(:max_heap_table_size)
