# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "blazing-upstart/version"

Gem::Specification.new do |s|
  s.name        = "blazing-upstart"
  s.version     = Blazing::Upstart::VERSION
  s.authors     = ["Daniel Farrell"]
  s.email       = ["danielfarrell76@gmail.com"]
  s.homepage    = "https://github.com/danielfarrell/blazing-upstart"
  s.summary     = %q{blazing recipe for restarting/reloading app with upstart}
  s.description = %q{blazing recipe for restarting/reloading app with upstart}

  s.rubyforge_project = "blazing-upstart"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency "blazing", '>= 0.2.9'
  s.add_dependency "activesupport"
end
