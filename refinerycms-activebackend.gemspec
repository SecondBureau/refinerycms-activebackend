# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-activebackend'
  s.authors           = ['Gilles Crofils']
  s.version           = '2.1.0'
  s.description       = 'Backend Customization for Refinery CMS'
  s.date              = '2013-12-03'
  s.summary           = 'Backend Customizationfor Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,db,lib}/**/*"] + ["readme.md"]

  # Runtime dependencies
  s.add_dependency             'refinerycms',         '~> 2.1.0'
  s.add_dependency             'acts_as_indexed'
  s.add_dependency             'haml-rails'
  s.add_dependency             'compass-rails'
  s.add_dependency             'deface'
  s.add_dependency             'jbuilder'
  s.add_dependency             'will_paginate'

  # Development dependencies (usually used for testing)
  s.add_development_dependency 'refinerycms-testing', '~> 2.1.0'
end
