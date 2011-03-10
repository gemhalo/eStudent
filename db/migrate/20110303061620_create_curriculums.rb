class CreateCurriculums < ActiveRecord::Migration
  def self.up
    create_table :curriculums do |t|
      t.integer :course_id
      t.integer :program_id
      t.integer :course_type
      t.integer :semester_id
      t.integer :class_year_id

      t.timestamps
    end
  end

  def self.down
    drop_table :curriculums
  end
end
