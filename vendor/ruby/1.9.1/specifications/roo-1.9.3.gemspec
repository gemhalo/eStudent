# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{roo}
  s.version = "1.9.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thomas Preymesser"]
  s.date = %q{2010-02-12}
  s.default_executable = %q{roo}
  s.description = %q{Roo can access the contents of various spreadsheet files. It can handle
* Openoffice
* Excel
* Google spreadsheets
* Excelx}
  s.email = %q{thopre@gmail.com}
  s.executables = ["roo"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt", "bin/roo", "test/no_spreadsheet_file.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "bin/roo", "csv11159", "csv1414", "csv9419", "csv9957", "lib/roo.rb", "lib/roo/excel.rb", "lib/roo/excelx.rb", "lib/roo/generic_spreadsheet.rb", "lib/roo/google.rb", "lib/roo/openoffice.rb", "lib/roo/roo_rails_helper.rb", "lib/roo/version.rb", "test/1900_base.xls", "test/1904_base.xls", "test/Bibelbund.csv", "test/Bibelbund.ods", "test/Bibelbund.xls", "test/Bibelbund.xlsx", "test/Bibelbund1.ods", "test/ScienceStaff.xls", "test/ScienceStaff_modified.xls", "test/bbu.ods", "test/bbu.xls", "test/bbu.xlsx", "test/bode-v1.ods.zip", "test/bode-v1.xls.zip", "test/boolean.ods", "test/boolean.xls", "test/boolean.xlsx", "test/borders.ods", "test/borders.xls", "test/borders.xlsx", "test/bug-row-column-fixnum-float.xls", "test/datetime.ods", "test/datetime.xls", "test/datetime.xlsx", "test/datetime_floatconv.xls", "test/emptysheets.ods", "test/emptysheets.xls", "test/false_encoding.xls", "test/formula.ods", "test/formula.xls", "test/formula.xlsx", "test/html-escape.ods", "test/matrix.ods", "test/matrix.xls", "test/named_cells.ods", "test/no_spreadsheet_file.txt", "test/numbers1.csv", "test/numbers1.ods", "test/numbers1.xls", "test/numbers1.xlsx", "test/only_one_sheet.ods", "test/only_one_sheet.xls", "test/only_one_sheet.xlsx", "test/paragraph.ods", "test/paragraph.xls", "test/paragraph.xlsx", "test/prova.xls", "test/ric.ods", "test/simple_spreadsheet.ods", "test/simple_spreadsheet.xls", "test/simple_spreadsheet.xlsx", "test/simple_spreadsheet_from_italo.ods", "test/simple_spreadsheet_from_italo.xls", "test/style.ods", "test/style.xls", "test/style.xlsx", "test/test_helper.rb", "test/test_roo.rb", "test/test_spreadsheet.rb", "test/time-test.csv", "test/time-test.ods", "test/time-test.xls", "test/time-test.xlsx", "test/whitespace.ods", "test/whitespace.xls", "test/whitespace.xlsx"]
  s.homepage = %q{http://roo.rubyforge.org/}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{roo}
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{Roo can access the contents of various spreadsheet files}
  s.test_files = ["test/test_roo.rb", "test/test_helper.rb", "test/test_spreadsheet.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bones>, [">= 3.2.1"])
    else
      s.add_dependency(%q<bones>, [">= 3.2.1"])
    end
  else
    s.add_dependency(%q<bones>, [">= 3.2.1"])
  end
end
