# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'libfchat/version'

Gem::Specification.new do |s|
  s.name            = 'libfchat'
  s.version         = Libfchat::VERSION
  s.date            = '2012-06-25'
  s.platform        = Gem::Platform::RUBY
  s.summary         = "A library for connection to F-chat"
  s.description     = "A library for connecting to F-chat ( http://f-list.net )"
  s.authors         = ["Ryan Gooler"]
  s.email           = 'cheetahmorph@gmail.com'
  s.files           = Dir.glob('lib/libfchat/*.rb')
  s.test_files      = Dir.glob('test/*_test.rb')
  s.homepage        = 'http://rubygems.org/gems/libfchat'
  s.license         = 'MIT'
  s.require_path    = 'lib'

  spec.add_development_dependency 'turn', '>= 0.9'
  spec.add_development_dependency 'miniunit', '>= 1.2'

  if defined?(JRUBY_VERSION)
      spec.add_runtime_dependency 'json-jruby', '>= 1.4'
  else
      spec.add_runtime_dependency 'json', '>= 1.7'
  end
end