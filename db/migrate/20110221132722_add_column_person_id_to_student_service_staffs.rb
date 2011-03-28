class AddColumnPersonIdToStudentServiceStaffs < ActiveRecord::Migration
  def self.up
    add_column :student_service_staffs, :person_id, :integer
  end

  def self.down
    remove_column :student_service_staffs, :person_id
  end
end
