# coding: utf-8
p lib = File.expand_path('../lib', 'rails_client_state')
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_client_state/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-client-state"
  spec.version       = RailsClientState::VERSION
  spec.authors       = ["Eric Laquer"]
  spec.email         = ["LaquerEric@gmail.com"]

  spec.summary       = 'Create and maintain a predictable client state container with a RAILS application'
  spec.description   = <<-eos
This gem maps routes to a State object on the client.
Client code subscribes to State data (show, index)
Client code publishes State data' (create or update)
Controller 'get' methods called when Clients subscribe
Controller 'put' or 'post' methods called when Clients publish data
Promises sychronize Client operations
Adds Controller base ClientStateController
ActionCableController and ActionController support heterogeneous client mix
ActionCable offers particularly high performance thru concurrancy and thru the elimination of HTTP turn around delays
  eos
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "js_routes"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
