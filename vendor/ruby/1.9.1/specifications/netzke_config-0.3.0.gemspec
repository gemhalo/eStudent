# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{netzke_config}
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kristian Mandrup"]
  s.date = %q{2010-06-25}
  s.description = %q{Configure Netzke modules as plugins for a Netzke app and link ExtJS library to boot}
  s.email = %q{kmandrup@gmail.com}
  s.executables = ["netzke_config", "netzke_config.bat"]
  s.extra_rdoc_files = ["LICENSE", "README.markdown"]
  s.files = [".document", ".gitignore", "LICENSE", "README.markdown", "Rakefile", "VERSION", "bin/netzke_config", "bin/netzke_config.bat", "lib/netzke_config.rb", "lib/netzke_config.thor", "netzke_config.gemspec", "spec/netzke_config_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "wiki/home.textile"]
  s.homepage = %q{http://github.com/kristianmandrup/netzke_config}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{Configure a Netzke app for Netzke development and debuging}
  s.test_files = ["spec/netzke_config_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_runtime_dependency(%q<thor>, [">= 0.13.6"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_dependency(%q<thor>, [">= 0.13.6"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
    s.add_dependency(%q<thor>, [">= 0.13.6"])
  end
end
