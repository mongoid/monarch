require "bundler"
Bundler.setup

require "rake"
require "rspec/core/rake_task"

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "monarch/version"

task :gem => :build
task :build do
  system "gem build monarch.gemspec"
end

task :install => :build do
  system "sudo gem install monarch-#{Monarch::VERSION}.gem"
end

task :release => :build do
  system "git tag -a v#{Monarch::VERSION} -m 'Tagging #{Monarch::VERSION}'"
  system "git push --tags"
  system "gem push monarch-#{Monarch::VERSION}.gem"
  system "rm monarch-#{Monarch::VERSION}.gem"
end

RSpec::Core::RakeTask.new("spec") do |spec|
  spec.pattern = "spec/**/*_spec.rb"
end

RSpec::Core::RakeTask.new('spec:progress') do |spec|
  spec.rspec_opts = %w(--format progress)
  spec.pattern = "spec/**/*_spec.rb"
end

task :default => :spec
