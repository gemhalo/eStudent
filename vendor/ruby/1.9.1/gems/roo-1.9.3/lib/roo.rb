
module Roo

  # :stopdoc:
  VERSION = '1.9.3'
  LIBPATH = ::File.expand_path(::File.dirname(__FILE__)) + ::File::SEPARATOR
  PATH = ::File.dirname(LIBPATH) + ::File::SEPARATOR
  # :startdoc:

  # Returns the version string for the library.
  #
  def self.version
    VERSION
  end

  # Returns the library path for the module. If any arguments are given,
  # they will be joined to the end of the libray path using
  # <tt>File.join</tt>.
  #
  def self.libpath( *args )
    args.empty? ? LIBPATH : ::File.join(LIBPATH, args.flatten)
  end

  # Returns the lpath for the module. If any arguments are given,
  # they will be joined to the end of the path using
  # <tt>File.join</tt>.
  #
  def self.path( *args )
    args.empty? ? PATH : ::File.join(PATH, args.flatten)
  end

  # Utility method used to require all files ending in .rb that lie in the
  # directory below this file that has the same name as the filename passed
  # in. Optionally, a specific _directory_ name can be passed in such that
  # the _filename_ does not have to be equivalent to the directory.
  #
  def self.require_all_libs_relative_to( fname, dir = nil )
    dir ||= ::File.basename(fname, '.*')
    search_me = ::File.expand_path(
      ::File.join(::File.dirname(fname), dir, '**', '*.rb'))
    Dir.glob(search_me).sort.each {|rb|
      puts "DEBUG: require #{rb}"
      require rb}
  end

  class Spreadsheet
    class << self
      def open(file)
        case File.extname(file)
        when '.xls'
          Excel.new(file)
        when '.xlsx'
          Excelx.new(file)
        when '.ods'
          Openoffice.new(file)
          # when ''
        else
          Google.new(file)
          # else
          # raise ArgumentError, "Don't know how to open file #{file}"
        end
      end
    end
  end
end  # module Roo

require 'roo/generic_spreadsheet'
require 'roo/openoffice'
require 'roo/excel'
require 'roo/excelx'
require 'roo/google'

#Roo.require_all_libs_relative_to(__FILE__)

# EOF
