# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'digit_convertor/version'

Gem::Specification.new do |spec|
  spec.name          = "digit_convertor"
  spec.version       = DigitConvertor::VERSION
  spec.authors       = ["Yuichi Tateno", "kwappa"]
  spec.email         = ["hotchpotch@gmail.com"]
  spec.description   = %q{digit convertor}
  spec.summary       = %q{digit convertor}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.10"
end
