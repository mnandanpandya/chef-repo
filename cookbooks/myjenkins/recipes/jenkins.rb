#
# Cookbook Name:: myjenkins
# Recipe:: jenkins
#
# Copyright 2016, Maruti Nandan Pandya
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'jenkins::java'
include_recipe 'jenkins::master'

service "jenkins" do
  action :start
end


jenkins_script 'activate global security' do
  command <<-EOH.gsub(/^ {4}/, '')
      import jenkins.model.*
      import hudson.security.*

      def instance = Jenkins.getInstance()

      def hudsonRealm = new HudsonPrivateSecurityRealm(false)
      instance.setSecurityRealm(hudsonRealm)

      hudsonRealm.createAccount("admin", "admin")

      def strategy = new GlobalMatrixAuthorizationStrategy()
      strategy.add(Jenkins.ADMINISTER, "admin")
      instance.setAuthorizationStrategy(strategy)

      instance.save()
  EOH
end

service "jenkins" do
  action :restart
end
