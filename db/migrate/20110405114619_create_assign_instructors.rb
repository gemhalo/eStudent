class CreateAssignInstructors < ActiveRecord::Migration
  def self.up
    create_table :assign_instructors do |t|
      t.integer :offered_course_id
      t.integer :instructor_id
      t.string :section

      t.timestamps
    end
  end

  def self.down
    drop_table :assign_instructors
  end
end
