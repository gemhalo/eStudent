require 'zipruby'

module Spreadsheet
  
  class Builder
    def initialize
      @xml = XmlBuilder.new
    end
  
    def content!
      finish
    end
  
    def spreadsheet
      @styles = {}
      @tables = []
    
      @xml = XmlBuilder.new
      @xml.tag! 'office:body' do
        @xml.tag! 'office:spreadsheet' do
    	    yield if block_given?
  	    
    	    @xml.tag! 'table:database-ranges' do
    	      for table_metadata in @tables
    	        start_address = cell_address(table_metadata[:hrows], 1)
    	        end_address = cell_address(table_metadata[:hrows]+table_metadata[:drows], table_metadata[:columns])
    	        @xml.tag! 'table:database-range', 'table:target-range-address' => "'#{table_metadata[:title]}':.#{start_address}:'#{table_metadata[:title]}'.#{end_address}", 'table:display-filter-buttons' => 'true'
  	        end
  	      end
  	    end
      end
    end
  
    def table(*args)
      options = args.last.is_a?(Hash) ? args.pop : {}
      title = args.first || "Sheet #{@tables.size+1}"
      # TODO: ensure table title is unique
      attrs = { 'table:name' => title }
    
      @tables << { :title => title, :columns => 0, :hrows => 0, :drows => 0 }
    
  	  @xml.tag!('table:table', attrs) { yield if block_given? }
    end
  
    def column(options={})
      style_name = nil
      style_name = style(:column, :width => options[:width]) if options[:width]
      @xml.tag! 'table:table-column', 'table:style-name' => style_name
    
      @tables.last[:columns] += 1
    end
  
    def row(*args)
      @tables.last[ @in_header ? :hrows : :drows ] += 1
    
      options = args.last.is_a?(Hash) ? args.pop : {}
      attrs = {}
      attrs = attrs.merge('table:style-name' => options.delete(:style)) if options.has_key?(:style)
    
      @xml.tag!('table:table-row', attrs) { yield if block_given? }
    end
  
    def header
      @in_header = true
      @xml.tag!('table:table-header-rows') { yield if block_given? }
      @in_header = nil
    end
  
    def cell(*args)
      options = (args.last.kind_of?(Hash) ? args.pop : {})
      if args.size > 1
        type = args.shift
        value = args.first
      elsif args.size == 1
        value = args.first
        type = case value
               when Numeric then :float
               when Date then :date
               when true, false then :boolean
               else :string
               end
      else
        type = :string
        value = ''
      end

      attrs = { 'office:value-type' => type }
      style_name = options.delete(:style) || (@in_header ? 'header' : type)
      if options[:align] || options[:background]
        style_name = style(:cell, :parent => style_name,
                                  :align => options[:align],
                                  :background => options[:background])
      end
      attrs.update('table:style-name' => style_name)
      attrs.update('table:number-columns-spanned' => options[:span]) if options[:span]
      attrs.update('table:number-rows-spanned' => options[:rowspan]) if options[:rowspan]
    
      value = value ? 'true' : 'false' if type == :boolean
    
      if options[:formula]
        attrs['table:formula'] = options[:formula]
      else
        if type == :float
          attrs['office:value'] = value
        else
          attrs["office:#{type}-value"] = value 
        end
      end
    
      @xml.tag! 'table:table-cell', attrs
    end
  
    def string_cell(*args)
      cell :string, *args
    end
  
    def numeric_cell(*args)
      cell :float, *args
    end
  
    def date_cell(*args)
      cell :date, *args
    end
  
    def boolean_cell(*args)
      value = args.shift
      options = args.last.is_a?(Hash) ? args.last : {}
      options[:align] ||= :center
      cell(:string, (value ? 'Да' : 'Нет'), options)
    end
  
    private
  
    def style(family, options={})
      @styles[family] ||= {}
      styles = @styles[family]
      return styles[options] if styles.has_key?(options)
      styles[options] = short_style_name(family)+styles.size.to_s
    end
      
    def short_style_name(family)
      case family
      when :table then 'ta'
      when :row then 'ro'
      when :cell then 'ce'
      when :column then 'co'
      else 'st'
      end
    end
  
    def cell_address(row, column)
      letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
      address = ''
      column -= 1
      while column > 0
        address = letters[column%26, 1] + address
        column /= 26
      end
      address + row.to_s
    end
  
    def finish
      output = ''
    
      Zip::Archive.open_buffer(output, Zip::CREATE) do |io|
        io.add_buffer 'mimetype', 'application/vnd.oasis.opendocument.spreadsheet'
        io.add_buffer 'styles.xml', styles_content
        io.add_buffer 'settings.xml', settings_content
        io.add_buffer 'content.xml', body_content
        io.add_buffer 'META-INF/manifest.xml', manifest_content
      end
    
      output
    end
  
    def manifest_content
      xml = XmlBuilder.new
      xml.tag! 'manifest:manifest',
        'xmlns:manifest' => 'urn:oasis:names:tc:opendocument:xmlns:manifest:1.0' do
        
        xml.tag! 'manifest:file-entry', 'manifest:full-path' => '/',
          'manifest:media-type' => 'application/vnd.oasis.opendocument.spreadsheet'
        xml.tag! 'manifest:file-entry', 'manifest:full-path' => 'content.xml',
          'manifest:media-type' => 'text/xml'
        xml.tag! 'manifest:file-entry', 'manifest:full-path' => 'styles.xml',
          'manifest:media-type' => 'text/xml'
        xml.tag! 'manifest:file-entry', 'manifest:full-path' => 'settings.xml',
          'manifest:media-type' => 'text/xml'
      end
      xml.to_s
    end
  
    def settings_content
      xml = XmlBuilder.new
      xml.tag! 'office:document-settings',
        'office:version' => '1.0',
        'xmlns:office' => 'urn:oasis:names:tc:opendocument:xmlns:office:1.0',
        'xmlns:config' => 'urn:oasis:names:tc:opendocument:xmlns:config:1.0',
        'xmlns:ooo' => 'http://openoffice.org/2004/office' do
        
  	    xml.tag! 'office:settings' do
  	      xml.tag! 'config:config-item-set', 'config:name' => 'ooo:view-settings' do
  	        xml.tag! 'config:config-item-map-indexed', 'config:name' => 'Views' do
  	          xml.tag! 'config:config-item-map-entry' do
  	            xml.tag! 'config:config-item', {'config:name' => 'ViewId', 'config:type' => 'string'}, 'View1'
  	            xml.tag! 'config:config-item-map-named', 'config:name' => 'Tables' do
  	              for table_metadata in @tables
  	                xml.tag! 'config:config-item-map-entry', 'config:name' => table_metadata[:title] do
  	                  xml.tag! 'config:config-item', {'config:name' => 'VerticalSplitMode', 'config:type' => 'short'}, '2'
  	                  xml.tag! 'config:config-item', {'config:name' => 'VerticalSplitPosition', 'config:type' => 'int'}, table_metadata[:hrows].to_s
                      xml.tag! 'config:config-item', {'config:name' => 'PositionBottom', 'config:type' => 'int'}, table_metadata[:hrows].to_s
                    end
                  end
                end
              end
            end
          end
        end
      end
      xml.to_s
    end
  
    def body_content
      xml = XmlBuilder.new
      xml.tag! 'office:document-content',
        'xmlns:office' => 'urn:oasis:names:tc:opendocument:xmlns:office:1.0',
        'xmlns:table' => 'urn:oasis:names:tc:opendocument:xmlns:table:1.0',
        'xmlns:text' => 'urn:oasis:names:tc:opendocument:xmlns:text:1.0',
        'xmlns:style' => 'urn:oasis:names:tc:opendocument:xmlns:style:1.0',
        'xmlns:fo' => 'urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0' do
      
        xml.tag! 'office:automatic-styles' do
          for options, name in (@styles[:column] || {})
            xml.tag! 'style:style', 'style:name' => name, 'style:family' => 'table-column' do
              attrs = {}
              attrs['style:column-width'] = options[:width] if options.key? :width
              xml.tag! 'style:table-column-properties', attrs unless attrs.empty?
            end
          end

          for options, name in (@styles[:cell] || {})
            xml.tag! 'style:style', 'style:name' => name, 'style:family' => 'table-cell', 'style:parent-style-name' => options[:parent] do
              attrs = {}
              attrs['fo:background-color'] = options[:background] if options[:background]
              attrs['style:text-align-source'] = 'fix' if options[:align]
              xml.tag! 'style:table-cell-properties', attrs unless attrs.empty?

              attrs = {}
              attrs['fo:text-align'] = options[:align] if options[:align]
              xml.tag! 'style:paragraph-properties', attrs unless attrs.empty?
            end
          end
        end
      
        xml.import! @xml
      
      end
      xml.to_s
    end
  
    def styles_content
      xml = XmlBuilder.new
      xml.tag! 'office:document-styles',
        'office:version' => '1.0',
        'xmlns:office' => 'urn:oasis:names:tc:opendocument:xmlns:office:1.0',
        'xmlns:datastyle' => 'urn:oasis:names:tc:opendocument:xmlns:datastyle:1.0',
        'xmlns:style' => 'urn:oasis:names:tc:opendocument:xmlns:style:1.0',
        'xmlns:fo' => 'urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0' do
        
        xml.tag! 'office:styles' do
          xml.tag! 'style:style', 'style:name' => 'text', 'style:family' => 'table-cell', 'style:data-style-name' => 'text' do
            xml.tag! 'style:table-cell-properties', 'style:text-align-source' => 'fix'
          end
      
          xml.tag! 'style:style', 'style:name' => 'numeric', 'style:family' => 'table-cell', 'style:data-style-name' => 'numeric' do
            xml.tag! 'style:table-cell-properties', 'style:text-align-source' => 'fix'
            xml.tag! 'style:paragraph-properties', 'fo:text-align' => 'right'
            xml.tag! 'number:number'
          end

          [:date, :boolean].each do |value_type|
            xml.tag! 'style:style', 'style:name' => value_type, 'style:family' => 'table-cell', 'style:data-style-name' => value_type do
              xml.tag! 'style:table-cell-properties', 'style:text-align-source' => 'fix'
              xml.tag! 'style:paragraph-properties', 'fo:text-align' => 'center'
            end
          end
      
          xml.tag! 'style:style', 'style:name' => 'header', 'style:family' => 'table-cell' do
            xml.tag! 'style:table-cell-properties', 'fo:background-color' => '#cccccc', 'style:text-align-source' => 'fix'
            xml.tag! 'style:paragraph-properties', 'fo:text-align' => 'center'
          end
      
          xml.tag! 'style:style', 'style:name' => 'title', 'style:family' => 'table-cell' do
            xml.tag! 'style:table-cell-properties', 'style:text-align-source' => 'fix'
            xml.tag! 'style:text-properties', 'fo:font-size' => '20pt', 'fo:font-weight' => 'bold'
            xml.tag! 'style:paragraph-properties', 'fo:text-align' => 'center'
          end
        end
      end
      xml.to_s
    end
  end
  
end
