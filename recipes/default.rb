#
# Cookbook Name:: crowd
# Recipe:: default
#
# Copyright 2015, KLM Royal Dutch Airlines
#

case node['platform_family']
when 'debian'
  include_recipe 'apt'
end

settings = Crowd.settings(node)

include_recipe 'build-essential'
include_recipe 'java'
include_recipe 'crowd::database' if settings['database']['host'] == 'localhost'
include_recipe "crowd::#{node['crowd']['install_type']}"
include_recipe 'crowd::init'
include_recipe 'crowd::configuration'

# Install the proxy in front of Crowd, if any.
unless node['crowd']['proxy']['enabled'] == false
  include_recipe "crowd::#{node['crowd']['proxy']['type']}"
end
