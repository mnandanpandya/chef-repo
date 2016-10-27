#
# Cookbook Name:: myjenkins
# Recipe:: default
#
# Copyright 2016, Maruti Nandan Pandya
#
# All rights reserved - Do Not Redistribute
#

PACKAGES = []
PACKAGES << "git" << "vim" << "screen"

PACKAGES.each do |pkg|
  package pkg do
    action :install
  end
end