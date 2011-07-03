# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "selectbox_rails/version"

Gem::Specification.new do |s|
  s.name        = "selectbox_rails"
  s.version     = SelectboxRails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Sean Behan"]
  s.email       = ["bseanvt@gmail.com"]
  s.homepage    = "https://github.com/bseanvt/selectbox_rails"
  s.summary     = %q{jQuery selectbox plugin}
  s.description = %q{jQuery plugin for nicer looking select boxes for use with Rails 3.1 asset pipeline.}

  s.rubyforge_project = "selectbox_rails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
