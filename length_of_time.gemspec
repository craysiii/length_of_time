lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'length_of_time/version'

Gem::Specification.new do |spec|
  spec.name          = 'length_of_time'
  spec.version       = LengthOfTime::VERSION
  spec.authors       = ['Charles Ray Shisler III']
  spec.email         = ['charles@cray.io']

  spec.summary       =
    'DSL for lengths of time, similar to ActiveSupport::Numeric#seconds.'
  spec.homepage      = 'https://github.com/craysiii/length_of_time'
  spec.license       = 'MIT'

  spec.files         = Dir['bin/*'] +
                       Dir['lib/**/*.rb'] << 'LICENSE.txt' << 'README.md'

  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'pry'
end
