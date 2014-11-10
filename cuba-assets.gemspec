Gem::Specification.new do |spec|
  spec.name          = "cuba-assets"
  spec.version       = "0.0.3"
  spec.authors       = ["Federico Iachetti"]
  spec.email         = ["iachetti.federico@gmail.com"]
  spec.summary       = %q{Asset pipeline for Cuba.}
  spec.description   = %q{Asset pipeline for Cuba. Sprockets integration for Cuba.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  
  spec.add_dependency "cuba", "~> 3.1.1"
  spec.add_dependency "sprockets", "~> 2.12.3"
end
