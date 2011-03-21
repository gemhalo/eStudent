class CreateFamilyBackgrounds < ActiveRecord::Migration
  def self.up
    create_table :family_backgrounds do |t|
      t.string :father_edu_level
      t.string :mother_edu_level
      t.string :father_occupation
      t.string :mother_occupation

      t.timestamps
    end
  end

  def self.down
    drop_table :family_backgrounds
  end
end
