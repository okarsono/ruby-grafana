# coding: utf-8
# frozen_string_literal: true
lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "grafana/version"

Gem::Specification.new do |spec|

  spec.name          = "grafana"
  spec.version       = Grafana::VERSION
  spec.date          = "2020-02-28"
  spec.authors       = ["Bodo Schulz"]
  spec.email         = ["bodo@boone-schulz.de"]

  spec.summary       = "Grafana HTTP API Wrapper"
  spec.description   = "A simple wrapper for the Grafana HTTP API"
  spec.homepage      = "http://github.com/bodsch/ruby-grafana"
  spec.license     = "MIT"

  spec.files         = Dir[
    "README.md",
    "LICENSE",
    "lib/**/*",
    "doc/*"
  ]

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
#   if spec.respond_to?(:metadata)
#     spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
#   else
#     raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
#   end

#  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
#  spec.bindir        = "exe"
#  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

#  spec.add_runtime_dependency 'json',         '~> 1.7'
#  spec.add_runtime_dependency 'rest-client',  '~> 1.8'

  spec.add_dependency("json", "~> 2.1")
  spec.add_dependency("rest-client", "~> 2.0")

  begin
    spec.required_ruby_version = ">= 3.0"
  rescue => e
    warn "#{$PROGRAM_NAME}: #{e}"
    exit!
  end

  spec.add_development_dependency("guard", "~> 0")
  spec.add_development_dependency("guard-rspec", "~> 0")
  spec.add_development_dependency("pry", "~> 0")
  spec.add_development_dependency("pry-nav", "~> 0")
  spec.add_development_dependency("pry-remote", "~> 0")
  spec.add_development_dependency("rake", ">= 12.3.3")
  spec.add_development_dependency("rake-notes", "~> 0")
  spec.add_development_dependency("rspec", "~> 0")
  spec.add_development_dependency("rspec_junit_formatter", "~> 0")
  spec.add_development_dependency("rspec-nc", "~> 0")
  spec.add_development_dependency("rubocop", "~> 0.49.0")
  spec.add_development_dependency("rubocop-checkstyle_formatter", "~> 0")
end
