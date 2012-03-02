# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rdice/version"

Gem::Specification.new do |s|
  s.name        = "rdice"
  s.version     = Rdice::VERSION
  s.authors     = ["Denis"]
  s.email       = ["de.tierno@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Roll dices with different faces}
  s.description = %q{This gem allow you to set dices and roll it lots of times}

  s.rubyforge_project = "rdice"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_development_dependency "rake"
  # s.add_runtime_dependency "rest-client"
end
