# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "dice/version"

Gem::Specification.new do |s|
  s.name        = "rdice"
  s.version     = Dice::VERSION
  s.authors     = ["Denis"]
  s.email       = ["de.tierno@gmail.com"]
  s.homepage    = "https://github.com/detierno/dice"
  s.summary     = %q{Roll dices with different sides}
  s.description = %q{This gem allow you to set dices and roll it. You can set custom defaults and change behavior to fit you purpose }

  s.rubyforge_project = "rdice"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
  s.add_development_dependency "rake"
end
