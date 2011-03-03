# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dummy_data}
  s.version = "0.9.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Gonçalo Silva"]
  s.date = %q{2010-11-11}
  s.description = %q{Uses dummy to generate consistent fake data for your models (including associations) and provides a rake task to import it into the database}
  s.email = ["goncalossilva@gmail.com"]
  s.files = ["lib/generators/data/data_generator.rb", "lib/generators/common.rb", "lib/dummy_data.rb", "lib/generators/data/templates/dummy_data.rake", "LICENSE", "CHANGELOG.md", "README.md"]
  s.homepage = %q{http://github.com/goncalossilva/dummy_data}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{dummy_data}
  s.rubygems_version = %q{1.5.0}
  s.summary = %q{Uses dummy to generate data for your models and allows you to import it}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<dummy>, [">= 0.9.1"])
      s.add_runtime_dependency(%q<rails>, [">= 3.0.0"])
    else
      s.add_dependency(%q<dummy>, [">= 0.9.1"])
      s.add_dependency(%q<rails>, [">= 3.0.0"])
    end
  else
    s.add_dependency(%q<dummy>, [">= 0.9.1"])
    s.add_dependency(%q<rails>, [">= 3.0.0"])
  end
end
