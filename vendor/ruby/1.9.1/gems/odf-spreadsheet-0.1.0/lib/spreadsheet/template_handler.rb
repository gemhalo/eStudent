module Spreadsheet
  class TemplateHandler < ActionView::TemplateHandler
    include ActionView::TemplateHandlers::Compilable
    
    def compile(template)
      "sheet = ::Spreadsheet::Builder.new;" +
      "sheet.spreadsheet { "+template.source+" };" +
      "sheet.content;"
    end
  end
end
