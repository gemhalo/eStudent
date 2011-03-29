class CreateStudentServiceStaffs < ActiveRecord::Migration
  def self.up
    create_table :student_service_staffs do |t|
      t.string :id_number
      t.string :rank
      t.integer :qualification_type_id
      t.integer :role_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :student_service_staffs
  end
end
