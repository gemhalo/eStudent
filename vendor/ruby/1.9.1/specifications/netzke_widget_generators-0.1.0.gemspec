# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{netzke_widget_generators}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kristian Mandrup"]
  s.date = %q{2010-06-26}
  s.description = %q{Rails 3 generators for Netzke widgets}
  s.email = %q{kmandrup@gmail.com}
  s.extra_rdoc_files = ["LICENSE", "README.markdown"]
  s.files = [".document", ".gitignore", "LICENSE", "README.markdown", "Rakefile", "VERSION", "lib/generators/netzke/blp_widget/USAGE", "lib/generators/netzke/blp_widget/blp_widget_generator.rb", "lib/generators/netzke/blp_widget/templates/blp_widget.erb", "lib/generators/netzke/grid_panel_widget/USAGE", "lib/generators/netzke/grid_panel_widget/grid_panel_widget_generator.rb", "lib/generators/netzke/grid_panel_widget/templates/grid_panel_widget.erb", "lib/generators/netzke/tree_widget/USAGE", "lib/generators/netzke/tree_widget/templates/tree_widget.erb", "lib/generators/netzke/tree_widget/tree_widget_generator.rb", "lib/netzke_widget_generators.rb"]
  s.homepage = %q{http://github.com/kristianmandrup/netzke_widget_generators}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.0}
  s.summary = %q{Rails 3 generators for Netzke widgets}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
