require 'builder'

module Spreadsheet
  class BuilderXmlBuilder
    def initialize
      @xml = ::Builder::XmlMarkup.new
    end
    
    def tag!(name, attrs={}, content=nil)
      @xml.tag!(name, attrs) do
        @xml.text!(content) if content
        yield if block_given?
      end
    end
    
    def import!(builder)
      @xml << builder.to_s
    end
    
    def to_s
      @xml.to_s
    end
  end
end
