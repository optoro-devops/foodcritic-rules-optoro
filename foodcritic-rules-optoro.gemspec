# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require File.expand_path('../lib/foodcritic/rules/optoro/version.rb', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = 'foodcritic-rules-optoro'
  spec.version       = Foodcritic::Rules::Optoro::VERSION
  spec.authors       = ['DevOps']
  spec.email         = ['devops@optoro.com']
  spec.summary       = 'Provides additional Foodcritic rule for Optoro cookbooks'
  spec.description   = spec.summary
  spec.homepage      = 'http://github.com/optoro-devops/foodcritic-rules-optoro'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'foodcritic', '~> 4.0.0'
end
