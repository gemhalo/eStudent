require 'test/unit'
require 'spreadsheet'

class TestSpreadsheet < Test::Unit::TestCase

  def test_bug_last_row_255
    after Date.new(2010,2,15) do
      Spreadsheet.client_encoding = 'UTF-8'
      book = Spreadsheet.open(File.join('test','ScienceStaff.xls'))
      sheet1 = book.worksheet 0
      count = 0
      sheet1.each do |row|
        count += 1 # do something interesting with a row
      end
      puts "#{count} rows found"
      assert_equal 1537, count
    end
  end
end
