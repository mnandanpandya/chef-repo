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
template "/home/deployer/.netrc" do
  source 'netrc-deployer.erb'
  mode '0600'
  owner 'deployer'
  group 'deployer'
  variables(
    :login =>    netrc_auth['login'],
    :password => netrc_auth['password']
    )
  not_if { File.exists? "#{@name}.override" }
end
