# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'transfigurator/version'

Gem::Specification.new do |spec|
  spec.name          = "transfigurator"
  spec.version       = Transfigurator::VERSION
  spec.authors       = ["Matt Parsons"]
  spec.email         = ["parsonsmatt@gmail.com"]

  spec.summary       = %q{Transfigurator is a library for managing state via event streams}
  spec.homepage      = "https://www.github.com/parsonsmatt/transfigurator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
