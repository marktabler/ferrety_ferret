# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ferrety_ferret/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mark Tabler\n"]
  gem.email         = ["mark.tabler@fallingmanstudios.net"]
  gem.description   = %q{The base Ferret from which other ferrets are made}
  gem.summary       = %q{Mama Ferret}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "ferrety_ferret"
  gem.require_paths = ["lib"]
  gem.version       = FerretyFerret::VERSION
end
