class CreateDormitories < ActiveRecord::Migration
  def self.up
    create_table :dormitories do |t|
      t.integer :student_id
      t.string :dorm

      t.timestamps
    end
  end

  def self.down
    drop_table :dormitories
  end
end
