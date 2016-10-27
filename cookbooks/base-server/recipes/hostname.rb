#
# Cookbook Name:: base-server
# Recipe:: hostname
#
# Copyright 2014, Maruti Nandan Pandya
#
# All rights reserved - Do Not Redistribute
#

hostname = 'intel'
file '/etc/hostname' do
  content "#{hostname}\n"
end

service 'hostname' do
  action :restart
end

file '/etc/hosts' do
  content "127.0.0.1 localhost #{hostname}\n"
end