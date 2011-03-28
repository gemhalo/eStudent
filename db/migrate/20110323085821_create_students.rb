class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :id_number
      t.integer :applicant_id
      t.integer :department_id
      t.integer :program_id

      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
