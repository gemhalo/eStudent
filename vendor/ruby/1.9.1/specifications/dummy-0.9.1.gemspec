# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dummy}
  s.version = "0.9.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Gonçalo Silva"]
  s.date = %q{2010-11-11}
  s.description = %q{A Ruby library to generate clever dummy data}
  s.email = ["goncalossilva@gmail.com"]
  s.files = ["lib/dummy.rb", "lib/dummy/internet.rb", "lib/dummy/phone_number.rb", "lib/dummy/company.rb", "lib/dummy/core_ext/string.rb", "lib/dummy/core_ext/array.rb", "lib/dummy/name.rb", "lib/dummy/address.rb", "lib/dummy/core_ext.rb", "lib/dummy/geolocation.rb", "lib/dummy/lorem.rb", "LICENSE", "CHANGELOG.md", "README.md"]
  s.homepage = %q{http://github.com/goncalossilva/dummy}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{dummy}
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{Generates dummy data}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
