# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_globalization'
  s.version     = '1.3.0'
  s.summary     = 'Spree intergation for translation products using Globalize3'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Damiano Giacomello'
  s.email             = 'damiano.giacomello@diginess.it'
  # s.homepage          = 'http://www.spreecommerce.com'
  
  s.files        = Dir['CHANGELOG', 'README.md', 'LICENSE', 'lib/**/*', 'app/**/*', 'db/**/*', 'config/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 1.3.0'
  s.add_dependency 'i18n'
  s.add_dependency 'globalize', '~> 3.1.0'
  s.add_dependency 'routing-filter', '~> 0.3.1'
end
