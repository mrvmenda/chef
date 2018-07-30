package 'tree' do 
	action :install
end
package 'ntp' do

	action :install
end
file '/training/motd' do
	content "This file is the property of venugopal"
	owner 'mapr'
	group 'mapr'
end
service 'ntpd' do
	action [:enable, :start]

end
package 'git' do
	action :install
end
package 'mapr-nodemanager' do 
	action :install
end
