class CreateClassYears < ActiveRecord::Migration
  def self.up
    create_table :class_years do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :class_years
  end
end
