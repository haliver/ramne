# coding: utf-8
Gem::Specification.new do |s|
  s.name          = 'ramne'
  s.version       = '0.1.0'
  s.authors       = 'haliver'
  s.email         = '10766922+haliver@users.noreply.github.com'
  s.summary       = 'ramne'
  s.description   = 'All file names randomly rename in the directory.'
  s.homepage      = 'https://github.com/haliver/ramne'
  s.license       = 'MIT'
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }

  s.add_development_dependency "bundler", "~> 1.15"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", "~> 3.0"
end
