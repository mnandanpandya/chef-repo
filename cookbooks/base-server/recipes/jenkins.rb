## very basic Jenkins setup

yum_repository "jenkins" do
  description "Jenkins CI"
  url "http://pkg.jenkins-ci.org/redhat-stable"
  gpgkey "http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key"
  action :add
end

%w{ java-1.7.0-openjdk jenkins }.each do |pkg|
  package pkg do
    action :install
  end
end

group 'rvm' do
  members 'jenkins'
  action :modify
  append true
end


service "jenkins" do
  action [ :enable, :start ]
end

