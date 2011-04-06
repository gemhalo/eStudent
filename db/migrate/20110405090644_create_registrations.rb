class CreateRegistrations < ActiveRecord::Migration
  def self.up
    create_table :registrations do |t|
      t.integer :student_id
      t.integer :class_year_id
      t.integer :academic_year_semester_id
      t.date :registration_date

      t.timestamps
    end
  end

  def self.down
    drop_table :registrations
  end
end
