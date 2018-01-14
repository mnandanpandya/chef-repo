#
# Cookbook Name:: base-server
# Recipe:: netrc
#
# Copyright 2014, Maruti Nandan Pandya
#
# All rights reserved - Do Not Redistribute
#

class Chef::Recipe
  include ChefSecret
end

netrc_auth = find_data_keys "netrc_auth"
template "/home/intel/.netrc" do
  source 'netrc.erb'
  mode '0600'
  owner 'intel'
  group 'intel'
  variables(
    :login =>    netrc_auth['login'],
    :password => netrc_auth['password']
  )
end
