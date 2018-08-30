rails_root = File.expand_path('../../', __FILE__)

worker_processes 2
working_directory rails_root

timeout 300

# listen "#{rails_root}/tmp/sockets/unicorn.sock"
listen 4567
pid "#{rails_root}/tmp/pids/unicorn.pid"

stderr_path './log/unicorn.stderr.log'
stdout_path './log/unicorn.stdout.log'
