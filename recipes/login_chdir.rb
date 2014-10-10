#
# Cookbook Name:: utilities
# Recipe:: login_chdir
#

ruby_block "Set login directory" do
  block do
    file = Chef::Util::FileEdit.new("/home/#{node.utilities[:login_chdir][:user]}/#{node.utilities[:login_chdir][:startup_file]}")
    file.insert_line_if_no_match(/cd #{node.utilities[:login_chdir][:directory]}/, "cd #{node.utilities[:login_chdir][:directory]}")
    file.write_file
  end
end
