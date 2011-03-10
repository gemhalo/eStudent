begin
  require 'bones'
rescue LoadError
  abort '### Please install the "bones" gem ###'
end

ensure_in_path 'lib'
require 'roo'

task :default => 'test:run'
# task 'gem:release' => 'test:run'

Bones {
  name  'roo'
  authors  'Thomas Preymesser'
  email  'thopre@gmail.com'
  url  'http://roo.rubyforge.org/'
  version  Roo::VERSION
  dependencies = [
    # ['xmlsimple', '>= 0.0.1'],
  ['spreadsheet', '> 0.6.4'],
  #--
  # rel. 0.6.4 causes an invalid Date error if we
  # have a datetime value of 2006-02-02 10:00:00
  #++
  ['nokogiri', '>= 0.0.1'],
  ['builder', '>= 2.1.2'],
  ['gimite-google-spreadsheet-ruby','>= 0.0.5'],
  ['febeling-rubyzip','>= 0.9.2'], # meine aktuelle Version
  ]
}

=begin
PROJ.gem.dependencies = [
  # ['xmlsimple', '>= 0.0.1'],
  ['spreadsheet', '> 0.6.4'],
  #--
  # rel. 0.6.4 causes an invalid Date error if we
  # have a datetime value of 2006-02-02 10:00:00
  #++
  ['nokogiri', '>= 0.0.1'],
  ['builder', '>= 2.1.2'],
  ['gimite-google-spreadsheet-ruby','>= 0.0.5'],
  ['febeling-rubyzip','>= 0.9.2'], # meine aktuelle Version
  ]
=end

# EOF
__END__
# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

begin
  require 'bones'
#  Bones.setup
rescue LoadError
  begin
    load 'tasks/setup.rb'
  rescue LoadError
    raise RuntimeError, '### please install the "bones" gem ###'
  end
end

ensure_in_path 'lib'
module GData
  class Base
  end
end
require 'roo'

task :default => 'spec:run'

PROJ.name = 'roo'
PROJ.authors = 'Thomas Preymesser'
PROJ.email = 'thopre@gmail.com'
PROJ.url = 'http://roo.rubyforge.org/'
PROJ.version = Roo::VERSION
PROJ.rubyforge.name = 'roo'
PROJ.gem.dependencies = [
  # ['xmlsimple', '>= 0.0.1'],
  ['spreadsheet', '> 0.6.4'],
  #--
  # rel. 0.6.4 causes an invalid Date error if we
  # have a datetime value of 2006-02-02 10:00:00
  #++
  ['nokogiri', '>= 0.0.1'],
  ['builder', '>= 2.1.2'],
  ['gimite-google-spreadsheet-ruby','>= 0.0.5'],
  ['febeling-rubyzip','>= 0.9.2'], # meine aktuelle Version
]

PROJ.spec.opts << '--color'

# EOF
