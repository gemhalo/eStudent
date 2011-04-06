class CreateEnrollments < ActiveRecord::Migration
  def self.up
    create_table :enrollments do |t|
      t.integer :registration_id
      t.integer :offered_course_id
      t.string :add_drop_status

      t.timestamps
    end
  end

  def self.down
    drop_table :enrollments
  end
end
