# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "android_img_resizer/version"

Gem::Specification.new do |s|
  s.name        = "android_img_resizer"
  s.version     = AndroidImgResizer::VERSION
  s.authors     = ["Hélder Vasconcels"]
  s.email       = ["heldervasc@bearstouch.com"]
  s.homepage    = "http://www.bearstouch.com"
  s.summary     = %q{Tool to resize Android Resource images }
  s.description = %q{Tool to resize Android Resource images}

  s.rubyforge_project = "android_img_resizer"

  s.files         =  ['lib/android_img_resizer.rb','lib/android_img_resizer/version.rb','lib/android_img_resizer/android_img_resizer.rb']
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = ['android_img_resizer']
  s.require_paths = ["lib"]
  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_runtime_dependency "rmagick","~>2.13.1" 
end
