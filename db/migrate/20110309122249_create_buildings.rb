class CreateBuildings < ActiveRecord::Migration
  def self.up
    create_table :buildings do |t|
      t.string :building_name
      t.integer :campus_id
      t.integer :floors

      t.timestamps
    end
  end

  def self.down
    drop_table :buildings
  end
end
