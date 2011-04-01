class CreateAcademicYearSemesters < ActiveRecord::Migration
  def self.up
    create_table :academic_year_semesters do |t|
      t.integer :academic_year_id
      t.integer :semester_id
      t.date :start_at
      t.date :end_at
      t.boolean :status

      t.timestamps
    end
  end

  def self.down
    drop_table :academic_year_semesters
  end
end
