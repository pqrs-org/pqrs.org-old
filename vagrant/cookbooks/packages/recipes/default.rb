#
# Cookbook Name:: packages
# Recipe:: default

execute "full-upgrade" do
  user "root"
  command "aptitude update -y && aptitude full-upgrade -y"
  action :run
end

%w[
  build-essential
  cmake
  git
  nginx
  ruby-mustache
  ruby-rmagick
].each do |pkg|
  package "#{pkg}" do
    action :install
  end
end

# nginx
cookbook_file "/etc/nginx/sites-available/default" do
  source "nginx-default"
  mode "0644"
end

execute "modify nginx.conf" do
  user "root"
  command 'sed -i"" "s|^user www-data;$|user vagrant;|g" /etc/nginx/nginx.conf &&' +
          'sed -i"" "s|^.*sendfile.*$|sendfile off;|g" /etc/nginx/nginx.conf'
  action :run
end

service "nginx" do
  action [ :restart ]
end

# tidy-html5
bash "install tidy-html5" do
  code <<-EOH
    cd /tmp
    git clone https://github.com/htacg/tidy-html5.git
    cd tidy-html5/build/cmake
    cmake ../..
    make
    make install
  EOH
  not_if {File.exists?("/usr/local/bin/tidy5")}
end
