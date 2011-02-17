class CreateColleges < ActiveRecord::Migration
  def self.up
    create_table :colleges do |t|
      t.string :name
      t.integer :campus_id

      t.timestamps
    end
  end

  def self.down
    drop_table :colleges
  end
end
