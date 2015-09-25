workers = {
	'users' => 1
}

workers.each { |worker, count|
	template "/etc/supervisor/conf.d/worker-apps-#{worker}.conf" do
		source 'worker.erb'
		variables({
			:worker_name => "apps:#{worker}",
			:worker_count => count,
			:worker_listen => false
		})
	end
}

execute 'reloading supervisor' do
	command 'sudo supervisorctl reload'
end