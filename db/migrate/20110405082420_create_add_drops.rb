class CreateAddDrops < ActiveRecord::Migration
  def self.up
    create_table :add_drops do |t|
      t.integer :registration_id
      t.integer :offered_course_id
      t.string :request_for
      t.boolean :add_drop_status
      t.date :add_drop_date
      t.integer :approved_by

      t.timestamps
    end
  end

  def self.down
    drop_table :add_drops
  end
end
