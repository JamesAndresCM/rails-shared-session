$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "auth_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "auth_engine"
  spec.version     = AuthEngine::VERSION
  spec.authors     = ["jcanales"]
  spec.email       = ["jcanales@webdoxclm.com"]
  spec.homepage    = "https://www.domain.com"
  spec.summary     = "Summary of AuthEngine."
  spec.description = "Description of AuthEngine."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = spec.homepage
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.8", ">= 5.2.8.1"
  spec.add_dependency "devise"
  spec.add_dependency "bootstrap"
  spec.add_dependency "sassc-rails"

  spec.add_development_dependency "pg"
end
