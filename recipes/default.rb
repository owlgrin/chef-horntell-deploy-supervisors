template '/etc/supervisor/conf.d/pipe.conf' do
	source 'nodeapp.erb'
	variables({
		:app_name => 'pipe',
		:app_path => '/home/ubuntu/apps/pipe/index.js',
		:app_env => 'production'
	})
end

workers = {
	'campaigns' => 5,
	'segments' => 5
}

workers.each { |worker, count|
    template "/etc/supervisor/conf.d/#{worker}.conf" do
    	source 'worker.erb'
    	variables({
    		:worker_name => worker,
    		:worker_count => count,
    		:worker_env => 'production'
    	})
    end
}

