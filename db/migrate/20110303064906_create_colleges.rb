class CreateColleges < ActiveRecord::Migration
  def self.up
    create_table :colleges do |t|
      t.string :name
      t.integer :campus_id
      t.integer :college_telephone
      t.string :college_pobox
      t.string :college_email
      t.integer :instructor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :colleges
  end
end
