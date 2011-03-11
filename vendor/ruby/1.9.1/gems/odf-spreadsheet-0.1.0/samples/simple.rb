$LOAD_PATH << File.dirname(__FILE__)+"/../lib"

require 'rubygems'
require 'spreadsheet'

sheet = Spreadsheet::Builder.new
sheet.spreadsheet do
  sheet.table 'Simple time report' do
    sheet.row {
      sheet.cell 'Developing spreadsheet library'
      sheet.cell 80.0
    }
    sheet.row {
      sheet.cell 'Writing spreadsheet library documentation'
      sheet.cell 2.0
    }
  end
end

File.open('simple_time_report.ods', 'wb') { |f| f.write sheet.content! }
