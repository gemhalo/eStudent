class AddColumnToAcademicYears < ActiveRecord::Migration
  def self.up
    add_column :academic_years, :year, :string
  end

  def self.down
    remove_column :academic_years, :year
  end
end
