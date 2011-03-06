class CreateInstructors < ActiveRecord::Migration
  def self.up
    create_table :instructors do |t|
      t.string :id_number
      t.string :academic_rank
      t.string :specialization
      t.integer :role_id
      t.integer :department_id
      t.integer :person_id

      t.timestamps
    end
  end

  def self.down
    drop_table :instructors
  end
end
