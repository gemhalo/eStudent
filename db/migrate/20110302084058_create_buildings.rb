class CreateBuildings < ActiveRecord::Migration
  def self.up
    create_table :buildings do |t|
      t.string :building_name
      t.integer :number_of_rooms
      t.integer :number_of_beds_per_room

      t.timestamps
    end
  end

  def self.down
    drop_table :buildings
  end
end
