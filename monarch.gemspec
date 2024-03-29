# encoding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require "monarch/version"

Gem::Specification.new do |s|
  s.name        = "monarch"
  s.version     = Monarch::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Durran Jordan"]
  s.email       = ["durran@gmail.com"]
  s.homepage    = "http://mongoid.org"
  s.summary     = "WIP"
  s.description = "WIP"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "monarch"

  s.files        = Dir.glob("lib/**/*") + %w(LICENSE README.md Rakefile)
  s.require_path = 'lib'
end
