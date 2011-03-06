class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :id_number
      t.integer :department_id
      t.integer :enrollment_type_id
      t.integer :admission_type_id
      t.integer :program_id
      t.integer :person_id

      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
