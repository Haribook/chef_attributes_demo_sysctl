template '/etc/sysctl.conf' do
  owner 'root'
  group 'root'
  mode '0644'
  notifies :run, 'execute[sysctl -p]'
end

execute 'sysctl -p' do
  action :nothing # only a trigger
end