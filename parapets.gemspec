# coding: utf-8
require File.expand_path('../parapets-core/lib/parapets/version',__FILE__)

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name          = "parapets"
  s.version       = Parapets::VERSION
  s.summary       = %q{TODO: Write a gem summary}
  s.description   = %q{TODO: Write a gem description}

  s.required_ruby_version     = ">= 2.0.0"

  s.license = "MIT"

  s.authors       = ["Seba Gamboa"]
  s.email         = ["me@sagmor.com"]
  s.homepage      = "https://github.com/parapets/"

  s.files         = ["README.md"]

  s.add_dependency "parapets-core",       Parapets::VERSION
  s.add_dependency "parapets-entity",     Parapets::VERSION
  s.add_dependency "parapets-interactor", Parapets::VERSION

  s.add_dependency "bundler", "~> 1.3"
end
