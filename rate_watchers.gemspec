# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rate_watchers/version'

Gem::Specification.new do |spec|
  spec.name          = "rate_watchers"
  spec.version       = RateWatchers::VERSION
  spec.authors       = ["Stuart Liston"]
  spec.email         = ["stuart.liston@gmail.com"]
  spec.summary       = %q{Pulls Hooroo rates and stores them into a CSV file.}
  spec.description   = %q{In order to start analysing rate and offer quality on the Hotels app, this tool collects and exports what we ghave available for customers.}
  spec.homepage      = "http://github.com/hooroo"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = [ "run" ]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.4"
end
