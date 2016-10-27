#
# Cookbook Name:: base-server
# Recipe:: deployer
#
# Copyright 2014, Maruti Nandan Pandya
#
# All rights reserved - Do Not Redistribute
#

group "intel" do
  gid 1100
  action [:create, :modify]
end
user "intel" do
  uid 1100
  gid 1100
  home "/home/intel"
  shell "/bin/bash"
  supports :manage_home => true
  action [:create, :modify]
end

directory "/home/intel/.ssh" do
  owner 'intel'
  group 'intel'
  mode '0700'
  action :create
end
