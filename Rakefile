$:.unshift File.dirname(__FILE__) + 'lib'
    require "bundler/gem_tasks"

    require 'rspec/core/rake_task'
    RSpec::Core::RakeTask.new
    task :default => :spec
    
task :spec_list do
    sh "rspec spec/list_spec.rb"
end

task :spec_double_list do
    sh "rspec spec/double_list_spec.rb"
end

task :spec_references do
    sh "rspec spec/bibliography_spec.rb"
end

task :spec_references_apa do
    sh "rspec spec/references_apa_spec.rb"
end
