template "/etc/profile.d/aliases.sh" do
  source "aliases.sh.erb"
  owner "root"
  group "root"
  mode "0644"
end
