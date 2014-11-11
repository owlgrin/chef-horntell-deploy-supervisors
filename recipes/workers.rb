workers = {
	'activities' => 1,
	'default' => 1,
	'events' => 1,
	'hornlets' => 1,
	'horns' => 1,
	'mailets' => 1,
	'mails' => 1,
	'profiles' => 1,
	'responses' => 1,
	'campaigns' => 5,
	'segments' => 5
}

workers.each { |worker, count|
	template "/etc/supervisor/conf.d/worker-#{worker}.conf" do
		source 'worker.erb'
		variables({
			:worker_name => worker,
			:worker_count => count,
			:worker_listen => (worker == 'default')
		})
	end
}

execute 'reloading supervisor' do
	command 'sudo supervisorctl reload'
end