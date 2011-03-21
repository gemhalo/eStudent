class CreateDormitories < ActiveRecord::Migration
  def self.up
    create_table :dormitories do |t|
      t.integer :student_id
      t.integer :room_id
      t.string :bed_number
      t.date :academic_year

      t.timestamps
    end
  end

  def self.down
    drop_table :dormitories
  end
end
