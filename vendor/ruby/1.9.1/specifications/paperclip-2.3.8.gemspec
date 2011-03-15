# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{paperclip}
  s.version = "2.3.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jon Yurek"]
  s.date = %q{2010-12-15}
  s.description = %q{Easy upload management for ActiveRecord}
  s.email = %q{jyurek@thoughtbot.com}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["README.rdoc", "LICENSE", "Rakefile", "init.rb", "lib/generators/paperclip/paperclip_generator.rb", "lib/generators/paperclip/templates/paperclip_migration.rb.erb", "lib/generators/paperclip/USAGE", "lib/paperclip/attachment.rb", "lib/paperclip/attachment.rbc", "lib/paperclip/callback_compatability.rb", "lib/paperclip/callback_compatability.rbc", "lib/paperclip/command_line.rb", "lib/paperclip/command_line.rbc", "lib/paperclip/geometry.rb", "lib/paperclip/geometry.rbc", "lib/paperclip/glue.rbc", "lib/paperclip/interpolations.rb", "lib/paperclip/interpolations.rbc", "lib/paperclip/iostream.rb", "lib/paperclip/iostream.rbc", "lib/paperclip/matchers/have_attached_file_matcher.rb", "lib/paperclip/matchers/have_attached_file_matcher.rbc", "lib/paperclip/matchers/validate_attachment_content_type_matcher.rb", "lib/paperclip/matchers/validate_attachment_content_type_matcher.rbc", "lib/paperclip/matchers/validate_attachment_presence_matcher.rb", "lib/paperclip/matchers/validate_attachment_presence_matcher.rbc", "lib/paperclip/matchers/validate_attachment_size_matcher.rb", "lib/paperclip/matchers/validate_attachment_size_matcher.rbc", "lib/paperclip/matchers.rb", "lib/paperclip/matchers.rbc", "lib/paperclip/processor.rb", "lib/paperclip/processor.rbc", "lib/paperclip/railtie.rb", "lib/paperclip/railtie.rbc", "lib/paperclip/storage/filesystem.rb", "lib/paperclip/storage/filesystem.rbc", "lib/paperclip/storage/s3.rb", "lib/paperclip/storage/s3.rbc", "lib/paperclip/storage.rb", "lib/paperclip/storage.rbc", "lib/paperclip/style.rb", "lib/paperclip/style.rbc", "lib/paperclip/thumbnail.rb", "lib/paperclip/thumbnail.rbc", "lib/paperclip/upfile.rb", "lib/paperclip/upfile.rbc", "lib/paperclip/version.rb", "lib/paperclip/version.rbc", "lib/paperclip.rb", "lib/paperclip.rbc", "lib/tasks/paperclip.rake", "test/attachment_test.rb", "test/attachment_test.rbc", "test/command_line_test.rb", "test/command_line_test.rbc", "test/database.yml", "test/fixtures/12k.png", "test/fixtures/50x50.png", "test/fixtures/5k.png", "test/fixtures/bad.png", "test/fixtures/s3.yml", "test/fixtures/text.txt", "test/fixtures/twopage.pdf", "test/geometry_test.rb", "test/geometry_test.rbc", "test/helper.rb", "test/helper.rbc", "test/integration_test.rb", "test/integration_test.rbc", "test/interpolations_test.rb", "test/interpolations_test.rbc", "test/iostream_test.rb", "test/iostream_test.rbc", "test/matchers/have_attached_file_matcher_test.rb", "test/matchers/have_attached_file_matcher_test.rbc", "test/matchers/validate_attachment_content_type_matcher_test.rb", "test/matchers/validate_attachment_content_type_matcher_test.rbc", "test/matchers/validate_attachment_presence_matcher_test.rb", "test/matchers/validate_attachment_presence_matcher_test.rbc", "test/matchers/validate_attachment_size_matcher_test.rb", "test/matchers/validate_attachment_size_matcher_test.rbc", "test/paperclip_test.rb", "test/paperclip_test.rbc", "test/processor_test.rb", "test/processor_test.rbc", "test/storage_test.rb", "test/storage_test.rbc", "test/style_test.rb", "test/style_test.rbc", "test/thumbnail_test.rb", "test/thumbnail_test.rbc", "test/upfile_test.rb", "test/upfile_test.rbc", "rails/init.rb", "generators/paperclip/paperclip_generator.rb", "generators/paperclip/templates/paperclip_migration.rb.erb", "generators/paperclip/USAGE", "shoulda_macros/paperclip.rb", "shoulda_macros/paperclip.rbc"]
  s.homepage = %q{http://www.thoughtbot.com/projects/paperclip}
  s.rdoc_options = ["--line-numbers", "--inline-source"]
  s.require_paths = ["lib"]
  s.requirements = ["ImageMagick"]
  s.rubyforge_project = %q{paperclip}
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{File attachments as attributes for ActiveRecord}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<appraisal>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<aws-s3>, [">= 0"])
      s.add_development_dependency(%q<sqlite3-ruby>, [">= 0"])
    else
      s.add_dependency(%q<activerecord>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<appraisal>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<aws-s3>, [">= 0"])
      s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<appraisal>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<aws-s3>, [">= 0"])
    s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
  end
end
