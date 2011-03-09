class CreateEducationalBackgrounds < ActiveRecord::Migration
  def self.up
    create_table :educational_backgrounds do |t|
      t.string :EHEECE_code
      t.integer :school_code
      t.integer :EHEECE_result
      t.integer :EHEECE_maximum_result

      t.timestamps
    end
  end

  def self.down
    drop_table :educational_backgrounds
  end
end
