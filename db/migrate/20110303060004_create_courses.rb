class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.string :course_title
      t.string :course_code
      t.integer :credit_hour
      t.string :description
      t.integer :department_id

      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end
