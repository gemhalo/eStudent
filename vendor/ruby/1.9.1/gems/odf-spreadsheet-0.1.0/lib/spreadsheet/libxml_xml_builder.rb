require 'libxml'
LibXML::XML.indent_tree_output = true

module Spreadsheet
  class LibxmlXmlBuilder
    def initialize
      @document = LibXML::XML::Document.new
      @node = nil
    end
    
    def tag!(name, attrs={}, content=nil)
      node = LibXML::XML::Node.new(name.to_s)
      node << content.to_s if content
      attrs.each { |k, v| LibXML::XML::Attr.new(node, k.to_s, v.to_s) }
      if @document.root
        @node << node
      else
        @node = node
        @document.root = node
      end
      if block_given?
        node, @node = @node, node
        yield
        @node = node
      end
    end
    
    def import!(builder)
      @node << @document.import(builder.root)
    end
    
    def to_s
      @document.to_s
    end
    
  protected
  
    def root
      @document.root
    end
  end
end
