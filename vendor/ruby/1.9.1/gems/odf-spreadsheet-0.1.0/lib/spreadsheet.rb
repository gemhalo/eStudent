require 'spreadsheet/builder'

Spreadsheet::XmlBuilder = begin
  require 'spreadsheet/libxml_xml_builder'
  Spreadsheet::LibxmlXmlBuilder
rescue LoadError  
  require 'spreadsheet/builder_xml_builder'
  Spreadsheet::BuilderXmlBuilder
end

if defined?(RAILS_ENV)
  require 'action_view'

  Mime::Type.register 'application/vnd.oasis.opendocument.spreadsheet', :spreadsheet

  ActionView::Template.register_template_handler :rsheet, Spreadsheet::TemplateHandler
  ActionView::Template.exempt_from_layout :rsheet
end

