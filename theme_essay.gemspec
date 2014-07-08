$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "theme_essay/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "theme_essay"
  s.version     = ThemeEssay::VERSION
  s.authors     = ["Ace Subido", "Karlo Soriano"]
  s.email       = ["ace@aelogica.com", "karlo@aelogica.com"]
  s.homepage    = "appexpress.io"
  s.summary     = "AELOGICA AppExpress Essay Theme 2014"
  s.description = "AELOGICA AppExpress Essay Theme 2014"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.1"
  s.add_dependency "foundation-rails", "~> 5.3"

  s.add_development_dependency "sqlite3"
end
