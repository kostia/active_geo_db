# -*- encoding: utf-8 -*-
require File.expand_path("../lib/active_geo_db/version", __FILE__)

Gem::Specification.new do |gem|
  gem.add_dependency("activerecord")
  gem.add_dependency("open_geo_db")
  gem.add_dependency("rails")
  gem.authors = ["Kostiantyn Kahanskyi"]
  gem.description = %q{Rails (ActiveRecord) lib for accessing OpenGeoDb}
  gem.email = %w(kostiantyn.kahanskyi@googlemail.com)
  gem.executables = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.files = `git ls-files`.split("\n")
  gem.homepage = "https://github.com/kostia/active_geo_db"
  gem.name = "active_geo_db"
  gem.require_paths = %w(lib)
  gem.summary = %q{Rails (ActiveRecord) lib for accessing OpenGeoDb}
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.version = ActiveGeoDb::VERSION
end
