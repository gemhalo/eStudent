class CreateAcademicYears < ActiveRecord::Migration
  def self.up
    create_table :academic_years do |t|
      t.date :start_at
      t.date :end_at
      t.boolean :status

      t.timestamps
    end
  end

  def self.down
    drop_table :academic_years
  end
end
