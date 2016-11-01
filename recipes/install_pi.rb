
pixinsight = 'PI-linux-x86_64-01.08.04.1198-20160221-c'
pixinsight_tgz = "#{pixinsight}.tar.gz"

s3_file "/home/ubuntu/#{pixinsight_tgz}" do
  bucket 'spapixinsightdata'
  remote_path 'PI-linux-x86_64-01.08.04.1198-20160221-c.tar.gz'
  action :create
end

execute "Unpack pixinsight" do
  command "tar xzf /home/ubuntu/#{pixinsight_tgz}"
  cwd "/home/ubuntu"
  user 'ubuntu'
end

expect_script 'Install Pixinsight' do
  cwd '/home/ubuntu'
  code <<-EOH
    spawn ./installer
    expect {
      -regexp "Are you sure.*" {
        exp_send "yes\r"
        exp_continue
      }
      eof
    }
  EOH
  user 'root'
  group 'root'
end

execute "chown" do
  command "chown -R ubuntu /opt/PixInsight/"
  user 'root'
end

cookbook_file '/home/ubuntu/pixinsight-license' do
  source 'pixinsight-license'
  owner 'ubuntu'
  group 'ubuntu'
  mode '0644'
  action :create
end
