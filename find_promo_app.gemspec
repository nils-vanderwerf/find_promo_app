# frozen_string_literal: true

require_relative "lib/find_promo_app/version"

Gem::Specification.new do |spec|
  spec.name          = "find_promo_app"
  spec.version       = FindPromoApp::VERSION
  spec.authors       = ["nils-vanderwerf"]
  spec.email         = ["n.vanderw.92@gmail.com"]

  spec.summary       = "A Web scraper for Groupon to fiund promotions"
  spec.homepage      = "https://github.com/nils-vanderwerf/find_promo_app.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = "https://nils-vanderwerf.github.io/find_promo_app/"
  spec.metadata["source_code_uri"] = "https://github.com/nils-vanderwerf/find_promo_app.git"
  spec.metadata["changelog_uri"] = "https://github.com/nils-vanderwerf/find_promo_app/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html

  
end
