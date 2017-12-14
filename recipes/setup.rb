package 'vim-enhanced'
package 'emacs'
package 'nano'


package 'tree' do
action :install
end

package 'git' do
action :install
end

package 'ntp' 

file '/etc/motd' do
content 'This Server is the property of content by Karthick Selvam'
owner 'root'
group 'root'
action :create
end

service 'ntpd' do
action [ :enable, :start ]
end
