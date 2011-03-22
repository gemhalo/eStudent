# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{railroad}
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Javier Smaldone"]
  s.date = %q{2008-05-10}
  s.default_executable = %q{railroad}
  s.email = %q{javier@smaldone.com.ar}
  s.executables = ["railroad"]
  s.extra_rdoc_files = ["README", "COPYING"]
  s.files = ["lib/railroad/aasm_diagram.rb", "lib/railroad/models_diagram.rb", "lib/railroad/app_diagram.rb", "lib/railroad/controllers_diagram.rb", "lib/railroad/diagram_graph.rb", "lib/railroad/options_struct.rb", "ChangeLog", "COPYING", "rake.gemspec", "README", "bin/railroad"]
  s.homepage = %q{http://railroad.rubyforge.org}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{railroad}
  s.rubygems_version = %q{1.5.0}
  s.summary = %q{A DOT diagram generator for Ruby on Rail applications}

  if s.respond_to? :specification_version then
    s.specification_version = 2

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
