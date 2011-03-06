# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cancan}
  s.version = "1.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.4") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Bates"]
  s.date = %q{2011-01-20}
  s.description = %q{Simple authorization solution for Rails which is decoupled from user roles. All permissions are stored in a single location.}
  s.email = %q{ryan@railscasts.com}
  s.files = ["lib/cancan/ability.rb", "lib/cancan/controller_additions.rb", "lib/cancan/controller_resource.rb", "lib/cancan/exceptions.rb", "lib/cancan/inherited_resource.rb", "lib/cancan/matchers.rb", "lib/cancan/model_adapters/abstract_adapter.rb", "lib/cancan/model_adapters/active_record_adapter.rb", "lib/cancan/model_adapters/data_mapper_adapter.rb", "lib/cancan/model_adapters/default_adapter.rb", "lib/cancan/model_adapters/mongoid_adapter.rb", "lib/cancan/model_additions.rb", "lib/cancan/rule.rb", "lib/cancan.rb", "lib/generators/cancan/ability/ability_generator.rb", "lib/generators/cancan/ability/templates/ability.rb", "lib/generators/cancan/ability/USAGE", "spec/cancan/ability_spec.rb", "spec/cancan/controller_additions_spec.rb", "spec/cancan/controller_resource_spec.rb", "spec/cancan/exceptions_spec.rb", "spec/cancan/inherited_resource_spec.rb", "spec/cancan/matchers_spec.rb", "spec/cancan/model_adapters/active_record_adapter_spec.rb", "spec/cancan/model_adapters/data_mapper_adapter_spec.rb", "spec/cancan/model_adapters/default_adapter_spec.rb", "spec/cancan/model_adapters/mongoid_adapter_spec.rb", "spec/cancan/rule_spec.rb", "spec/matchers.rb", "spec/README.rdoc", "spec/spec.opts", "spec/spec_helper.rb", "CHANGELOG.rdoc", "Gemfile", "LICENSE", "Rakefile", "README.rdoc", "init.rb"]
  s.homepage = %q{http://github.com/ryanb/cancan}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{cancan}
  s.rubygems_version = %q{1.5.0}
  s.summary = %q{Simple authorization solution for Rails.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2.1.0"])
      s.add_development_dependency(%q<rails>, ["~> 3.0.0"])
      s.add_development_dependency(%q<rr>, ["~> 0.10.11"])
      s.add_development_dependency(%q<supermodel>, ["~> 0.1.4"])
    else
      s.add_dependency(%q<rspec>, ["~> 2.1.0"])
      s.add_dependency(%q<rails>, ["~> 3.0.0"])
      s.add_dependency(%q<rr>, ["~> 0.10.11"])
      s.add_dependency(%q<supermodel>, ["~> 0.1.4"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2.1.0"])
    s.add_dependency(%q<rails>, ["~> 3.0.0"])
    s.add_dependency(%q<rr>, ["~> 0.10.11"])
    s.add_dependency(%q<supermodel>, ["~> 0.1.4"])
  end
end
