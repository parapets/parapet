require "bundler/gem_tasks"

PROJECTS = %w{parapets-core parapets-entity parapets-interactor}

desc 'Run all tests by default'
task :default => :spec

%w{spec}.each do |task_name|
  desc "Run #{task_name} task for all projects"
  task task_name do
    errors = []
    PROJECTS.each do |project|
      system(%(cd #{project} && #{$0} #{task_name})) || errors << project
    end
    fail("Errors in #{errors.join(', ')}") unless errors.empty?
  end
end

require 'cane/rake_task'
Cane::RakeTask.new(:quality)

require 'yard'
YARD::Rake::YardocTask.new(:doc)

