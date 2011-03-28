class CreateEthnicities < ActiveRecord::Migration
  def self.up
    create_table :ethnicities do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :ethnicities
  end
end
