#
# Cookbook Name:: base-server
# Recipe:: aliases
#
# Copyright 2014, Maruti Nandan Pandya
#
# All rights reserved - Do Not Redistribute
#


template "/etc/profile.d/aliases.sh" do
  source "aliases.sh.erb"
  owner "root"
  group "root"
  mode "0644"
end
