require "bundler/setup"
require "parapets-entity"

Dir["spec/support/**/*.rb"].each { |f| require File.expand_path(f) }
