class AddStudentServiceStaffIdToApplicant < ActiveRecord::Migration
  def self.up
    add_column :applicants, :student_service_staff_id, :integer
  end

  def self.down
    remove_column :applicants, :student_service_staff_id
  end
end
