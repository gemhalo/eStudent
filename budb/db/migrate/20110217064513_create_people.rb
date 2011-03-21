class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :name
      t.string :father_name
      t.string :grand_father_name
      t.string :gender
      t.datetime :date_of_birth
      t.string :place_of_birth
      t.integer :ethnicity
      t.integer :nationality
      t.string :marital_status
      t.string :mother_full_name
      t.string :photo

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
