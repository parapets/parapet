# coding: utf-8
require File.expand_path('../../parapet-core/lib/parapet/version',__FILE__)

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name          = "parapet-entity"
  s.version       = Parapet::VERSION
  s.summary       = %q{TODO: Write a gem summary}
  s.description   = %q{TODO: Write a gem description}

  s.required_ruby_version     = ">= 2.0.0"

  s.license = "MIT"

  s.authors       = ["Seba Gamboa"]
  s.email         = ["me@sagmor.com"]
  s.homepage      = "https://github.com/parapets/"

  s.files         = ["README.md", "lib/**/*"]

  s.add_dependency "parapet-core", Parapet::VERSION
  s.add_dependency 'virtus', '~> 1.0.0.rc1'
  s.add_dependency 'inflecto'
  s.add_dependency 'activemodel', '~> 4.0.0'

end
