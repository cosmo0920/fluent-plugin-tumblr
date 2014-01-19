# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-tumblr"
  spec.version       = '0.0.0'
  spec.authors       = ["bash0C7"]
  spec.email         = ["koshiba+github@4038nullpointer.com"]
  spec.description   = "Fluentd output plugin to post to tumblr"
  spec.summary       = "Fluentd output plugin to post to tumblr"
  spec.homepage      = "https://github.com/bash0C7/fluent-plugin-tumblr"
  spec.license       = "Ruby's"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "fluentd"
  spec.add_dependency "tumblr_client", ">= 0.8.2"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rr"
  spec.add_development_dependency "pry"
end
