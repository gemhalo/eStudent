$LOAD_PATH << File.dirname(__FILE__)+"/../lib"

require 'rubygems'
require 'spreadsheet'

sheet = Spreadsheet::Builder.new
sheet.spreadsheet do
  sheet.table 'Rich time report' do
    sheet.column :width => '4in'
    sheet.column :width => '0.5in'
    
    sheet.header {
      sheet.row {
        sheet.cell 'Time report', :span => 2, :style => 'title'
      }
      sheet.row {
        sheet.cell 'Activity', :align => :left
        sheet.cell 'Hours'
      }
    }
    
    sheet.row {
      sheet.string_cell 'Developing spreadsheet library'
      sheet.numeric_cell 80.0
    }
    sheet.row {
      sheet.string_cell 'Writing spreadsheet library documentation'
      sheet.numeric_cell 2.0
    }
  end
end

File.open('rich_time_report.ods', 'wb') { |f| f.write sheet.content! }
