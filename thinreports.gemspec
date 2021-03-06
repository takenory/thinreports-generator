# coding: utf-8

$LOAD_PATH.unshift(File.expand_path('../lib/', __FILE__))
require 'thinreports/version'

Gem::Specification.new do |s|
  s.name        = 'thinreports'
  s.version     = ThinReports::VERSION
  s.author      = 'Matsukei Co.,Ltd.'
  s.email       = 'thinreports@matsukei.co.jp'
  
  s.summary     = 'Reporting solution for Ruby and Rails.'
  s.description = 'ThinReports is Open Source Reporting Solution for Ruby. ' +
                  'It provides a GUI Designer and a Library for Ruby.'
  s.homepage    = 'http://www.thinreports.org/'
  
  s.platform                  = Gem::Platform::RUBY
  s.required_ruby_version     = '>= 1.8.7'
  s.required_rubygems_version = '>= 1.3.6'
  
  s.rdoc_options     = ['--main', 'README.rdoc']
  s.extra_rdoc_files = ['README.rdoc']
  
  s.files         = Dir['{lib,tasks,resources}/**/*'] +
                    Dir['doc/yardoc_templates/**/*'] +
                    Dir['test/{unit,case,benchmark}/**/*'] +
                    ['Rakefile', 'README.rdoc', '.yardopts']
  s.require_path  = 'lib'
  
  s.add_dependency('prawn', '>= 0.12.0', '<= 0.12.0')
  
  s.add_development_dependency('bundler', ['>= 1.0.0'])
  s.add_development_dependency('flexmock', ['>= 0'])
  s.add_development_dependency('yard', ['>= 0'])
end
