#
# Cookbook Name:: base-server
# Recipe:: sshd
#
# Copyright 2014, Maruti Nandan Pandya
#
# All rights reserved - Do Not Redistribute
#

service "sshd" do
  supports :status => true, :restart => true, :reload => true
end

template "/etc/ssh/sshd_config" do
  source "sshd_config.erb"
  owner "root"
  group "root"
  mode "0600"
  notifies :reload, "service[sshd]", :delayed
end
