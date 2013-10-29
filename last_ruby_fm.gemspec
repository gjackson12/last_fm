# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'last_ruby_fm/version'

Gem::Specification.new do |spec|
  spec.name          = "last_ruby_fm"
  spec.version       = LastRubyFm::VERSION
  spec.authors       = ["Graham Jackson"]
  spec.email         = ["graham.jackson07@gmail.com"]
  spec.description   = %q{API wrapper for LastFM}
  spec.summary       = %q{API wrapper for LastFM using Faraday, VCR, and RSpec}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday"
  spec.add_dependency "multi_json"

  #spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "pry"
end
