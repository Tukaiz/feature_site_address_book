# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'feature_site_address_book/version'

Gem::Specification.new do |spec|
  spec.name          = "feature_site_address_book"
  spec.version       = FeatureSiteAddressBook::VERSION
  spec.authors       = ["tatums"]
  spec.email         = ["tatum@ashlandstudios.com"]
  spec.summary       = %q{ Site address book.}
  spec.description   = %q{ This is a global site address book.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
