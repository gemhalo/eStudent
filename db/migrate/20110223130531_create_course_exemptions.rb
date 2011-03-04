class CreateCourseExemptions < ActiveRecord::Migration
  def self.up
    create_table :course_exemptions do |t|
      t.string :course_name
      t.integer :credit_hour
      t.integer :applicant_id

      t.timestamps
    end
  end

  def self.down
    drop_table :course_exemptions
  end
end
