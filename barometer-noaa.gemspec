# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'barometer/noaa/version'

Gem::Specification.new do |spec|
  spec.name          = 'barometer-noaa'
  spec.version       = Barometer::Noaa::VERSION
  spec.authors       = ['Mark Gangl']
  spec.email         = ['mark@attackcorp.com']
  spec.description   = 'A barometer adapter for Noaa weather'
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/attack/barometer-noaa'
  spec.license       = 'MIT'

  spec.platform      = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 1.9.3'

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ['lib']

  spec.add_dependency 'barometer', '~> 0.9.7'
  spec.add_development_dependency 'bundler'
end
