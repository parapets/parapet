# coding: utf-8
require File.expand_path('../../parapet-core/lib/parapet/version',__FILE__)

Gem::Specification.new do |s|

  s.platform    = Gem::Platform::RUBY
  s.name          = "parapet-core"
  s.version       = Parapet::VERSION
  s.summary       = %q{TODO: Write a gem summary}
  s.description   = %q{TODO: Write a gem description}

  s.required_ruby_version     = ">= 2.0.0"

  s.license = "MIT"

  s.authors       = ["Seba Gamboa"]
  s.email         = ["me@sagmor.com"]
  s.homepage      = "https://github.com/parapets/"

  s.files         = ["README.md", "lib/**/*"]

  s.add_dependency 'activesupport', '~> 4.0.0'

end
