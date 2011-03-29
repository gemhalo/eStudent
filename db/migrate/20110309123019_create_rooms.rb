class CreateRooms < ActiveRecord::Migration
  def self.up
    create_table :rooms do |t|
      t.string :room_number
      t.integer :building_id
      t.integer :floor_number
      t.integer :holding_capacity
      t.string :used_for

      t.timestamps
    end
  end

  def self.down
    drop_table :rooms
  end
end
