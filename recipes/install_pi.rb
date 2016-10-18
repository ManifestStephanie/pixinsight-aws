
pixinsight = 'PI-linux-x86_64-01.08.04.1198-20160221-c'
pixinsight_tgz = "#{pixinsight}.tar.gz"

cookbook_file "/home/ubuntu/#{pixinsight_tgz}" do
  source pixinsight_tgz
  action :create
end

exec "Unpack pixinsight" do
  command "tar xzf /home/ubuntu/#{pixinsight_tgz}"
end
  
