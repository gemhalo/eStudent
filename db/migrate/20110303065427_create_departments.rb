class CreateDepartments < ActiveRecord::Migration
  def self.up
    create_table :departments do |t|
      t.string :name
      t.integer :college_id
      t.integer :telephone
      t.string :pobox
      t.string :email
      t.integer :instructor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :departments
  end
end
