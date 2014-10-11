#
# Cookbook Name:: utilities
# Recipe:: login_chdir
#

ruby_block "chdir after login" do
  block do
    File.open("/home/#{node.utilities[:login_chdir][:user]}/#{node.utilities[:login_chdir][:startup_file]}", 'a') do |file|
      file.puts "\ncd #{node.utilities[:login_chdir][:directory]}"
    end
  end
  not_if "grep -q 'cd #{node.utilities[:login_chdir][:directory]}' /home/#{node.utilities[:login_chdir][:user]}/#{node.utilities[:login_chdir][:startup_file]}"
end
