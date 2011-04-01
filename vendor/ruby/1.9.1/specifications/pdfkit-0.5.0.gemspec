# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{pdfkit}
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jared Pace", "Relevance"]
  s.date = %q{2010-12-27}
  s.description = %q{Uses wkhtmltopdf to create PDFs using HTML}
  s.email = ["jared@codewordstudios.com"]
  s.files = [".document", ".gitignore", ".rspec", "Gemfile", "Gemfile.lock", "History.md", "LICENSE", "POST_INSTALL", "README.md", "Rakefile", "lib/pdfkit.rb", "lib/pdfkit/configuration.rb", "lib/pdfkit/middleware.rb", "lib/pdfkit/pdfkit.rb", "lib/pdfkit/source.rb", "lib/pdfkit/version.rb", "pdfkit.gemspec", "spec/fixtures/example.css", "spec/fixtures/example.html", "spec/middleware_spec.rb", "spec/pdfkit_spec.rb", "spec/source_spec.rb", "spec/spec_helper.rb"]
  s.homepage = %q{http://github.com/jdpace/PDFKit}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{pdfkit}
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{HTML+CSS -> PDF}
  s.test_files = ["spec/fixtures/example.css", "spec/fixtures/example.html", "spec/middleware_spec.rb", "spec/pdfkit_spec.rb", "spec/source_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2.2.0"])
      s.add_development_dependency(%q<mocha>, [">= 0.9.10"])
      s.add_development_dependency(%q<rack-test>, [">= 0.5.6"])
    else
      s.add_dependency(%q<rspec>, ["~> 2.2.0"])
      s.add_dependency(%q<mocha>, [">= 0.9.10"])
      s.add_dependency(%q<rack-test>, [">= 0.5.6"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2.2.0"])
    s.add_dependency(%q<mocha>, [">= 0.9.10"])
    s.add_dependency(%q<rack-test>, [">= 0.5.6"])
  end
end
