# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'easygoing_active_model/version'

Gem::Specification.new do |spec|
  spec.name          = "easygoing_active_model"
  spec.version       = EasygoingActiveModel::VERSION
  spec.authors       = ["Seth Ringling"]
  spec.email         = ["sringling@avvo.com"]

  spec.summary       = %q{An ActiveModel::Model that does not raise exceptions when you pass a parameter for something undefined.}
  spec.description   = %q{An ActiveModel::Model that does not raise exceptions when you pass a parameter for something undefined. Useful in cases where you use an ActiveModel::Model for client classes using an API.  When you add a field to your endpoint, you don't want your app raising exceptions before you've started using that new field.}
  spec.homepage      = "https://github.com/avvo/easygoing_active_model"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'activemodel'
  spec.add_dependency 'activesupport'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
