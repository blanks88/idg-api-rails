$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "idg/api/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "idg-api-rails"
  spec.version     = Idg::Api::Rails::VERSION
  spec.authors     = ["ITIA DIGITAL"]
  spec.email       = ["manolo@itia.mx"]
  spec.homepage    = "https://github.com/manolo07/idg-api-rails"
  spec.summary     = "Rails plugin for ITIA DIGITAL projects."
  spec.description = "Rails plugin for ITIA DIGITAL projects"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://mygemserver.itia.mx"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 7.0.0", ">= 7.0.0.0"

  spec.add_development_dependency "sqlite3"
end
