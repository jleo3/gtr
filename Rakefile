# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require "guard/jasmine/task"

Gtr::Application.load_tasks
Guard::JasmineTask.new

task :travis => ["db:migrate", "db:test:prepare"] do
  ["rspec spec", "rake guard:jasmine"].each do |cmd|
    puts "Starting to run #{cmd}..."
    system("export DISPLAY=:99.0 && #{cmd}")
    raise "#{cmd} failed!" unless $?.exitstatus == 0
  end
end
