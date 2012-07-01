# -*- encoding: utf-8 -*-

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
  gem.version       = "1.0.0"
  gem.add_dependency 'httparty'
end
