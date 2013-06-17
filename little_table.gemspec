# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "little_table"
  spec.version       = "1.0.9"
  spec.authors       = ["Jankees van Woezik"]
  spec.email         = ["jankees@base42.nl"]
  spec.description   = %q{Little Table converts Cucumber like tables to useful objects}
  spec.summary       = %q{Convert your tables to objects}
  spec.homepage      = "http://rubygems.org/gems/little_table"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "active_support"
  spec.add_development_dependency "i18n" #required for core_ext
end
