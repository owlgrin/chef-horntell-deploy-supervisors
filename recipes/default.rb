template '/etc/supervisor/conf.d/pipe.conf' do
	source 'nodeapp.erb'
	variables({
		:app_name => 'pipe',
		:app_path => '/home/ubuntu/apps/pipe/index.js',
		:app_env => 'production'
	})
end