# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'barrister-redis/version'

Gem::Specification.new do |spec|
  spec.name          = "learnjin-barrister-redis"
  spec.version       = Barrister::Redis::VERSION
  spec.authors       = ["Erin Swenson-Healey", "Kai Rubarth"]
  spec.email         = ["erin.swenson.healey@gmail.com", "kai@doxter.de"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{Redis transport and server-container for Barrister.}
  spec.description   = %q{Redis transport and server-container for Barrister.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'redis', '~> 3.0'
  spec.add_dependency 'barrister', '~> 0'


  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'fakeredis'
end
