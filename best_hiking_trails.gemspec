# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'best_hiking_trails/version'

Gem::Specification.new do |spec|
  spec.name          = "best-hiking-trails"
  spec.version       = BestHikingTrails::VERSION
  spec.authors       = ["randy gylling"]
  spec.email         = ["mikegylling@yahoo.com"]

  spec.summary       = "See the top 10 best hiking trails and their location"
  spec.homepage      = "https://github.com/rgylling/best-hiking-trails-cli-gem"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = ["best-hiking-trails"]
  spec.require_paths = ["lib", "lib/best_hiking_trails"]
  spec.license       = "MIT"


  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri", "~> 1"
end
