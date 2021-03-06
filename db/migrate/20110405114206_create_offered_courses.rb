class CreateOfferedCourses < ActiveRecord::Migration
  def self.up
    create_table :offered_courses do |t|
      t.integer :curriculum_course_id
      t.integer :academic_year_semester_id

      t.timestamps
    end
  end

  def self.down
    drop_table :offered_courses
  end
end
