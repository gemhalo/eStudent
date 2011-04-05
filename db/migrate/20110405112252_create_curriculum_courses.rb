class CreateCurriculumCourses < ActiveRecord::Migration
  def self.up
    create_table :curriculum_courses do |t|
      t.integer :curriculum_id
      t.integer :course_id
      t.string :course_type
      t.float :price

      t.timestamps
    end
  end

  def self.down
    drop_table :curriculum_courses
  end
end
