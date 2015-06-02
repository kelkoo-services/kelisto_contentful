$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "kelisto_contentful/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "kelisto_contentful"
  s.version     = KelistoContentful::VERSION
  
  s.authors     = ["Guillermo Guerrero"]
  s.email       = ["g.guerrero.bus@gmail.com"]
  s.homepage    = "https://github.com/kelkoo-services/kelisto_contentful"
  s.summary     = "Kelisto Contentful client"
  s.description = "Kelisto Contentful client"

  s.files = `git ls-files`.split("\n")

  s.add_dependency "contentful"
end
