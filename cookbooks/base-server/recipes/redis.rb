#
# Cookbook Name:: base-server
# Recipe:: redis
#
# Copyright 2014, Maruti Nandan Pandya
#
# All rights reserved - Do Not Redistribute
#

package "redis" do
  action [:install, :upgrade]
  notifies :restart, "service[redis]"
end

template "/etc/redis.conf" do
  source "redis.conf.erb"
  owner "root"
  group "root"
  mode "0644"
  notifies :restart, "service[redis]"
end

service "redis" do
  action [ :enable, :start ]
end
