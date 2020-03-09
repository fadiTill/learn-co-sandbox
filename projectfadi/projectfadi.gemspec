
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "projectfadi/version"

Gem::Specification.new do |spec|
  spec.name          = "projectfadi"
  spec.version       = Projectfadi::VERSION
  spec.authors       = ["'fadimata tillman'"]
  spec.email         = ["'fadi.tillman@gmail.com'"]

  spec.summary       = "simple cli app open house"
  spec.description   = "use API data to get a list of open houses"
  spec.homepage      = git@github.com:fadiTill/projectfadi.gits

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = git@github.com:fadiTill/projectfadi.git
    spec.metadata["changelog_uri"] = git@github.com:fadiTill/projectfadi.git
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
