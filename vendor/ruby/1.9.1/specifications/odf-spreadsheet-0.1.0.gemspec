# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{odf-spreadsheet}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Maxim Kulkin"]
  s.date = %q{2010-02-14}
  s.description = %q{Library to generate OpenDocument (ODF) Spreadsheet documents.}
  s.email = %q{maxim.kulkin@gmail.com}
  s.extra_rdoc_files = ["README", "lib/spreadsheet.rb", "lib/spreadsheet/builder.rb", "lib/spreadsheet/builder_xml_builder.rb", "lib/spreadsheet/libxml_xml_builder.rb", "lib/spreadsheet/template_handler.rb"]
  s.files = ["MIT-LICENSE", "Manifest", "README", "Rakefile", "lib/spreadsheet.rb", "lib/spreadsheet/builder.rb", "lib/spreadsheet/builder_xml_builder.rb", "lib/spreadsheet/libxml_xml_builder.rb", "lib/spreadsheet/template_handler.rb", "samples/rich.rb", "samples/simple.rb", "odf-spreadsheet.gemspec"]
  s.homepage = %q{http://github.com/maximkulkin/spreadsheet}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Odf-spreadsheet", "--main", "README"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{odf-spreadsheet}
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{Library to generate OpenDocument (ODF) Spreadsheet documents.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
