class RemoveColumnAdmissionStatusTypeIdFromApplicants < ActiveRecord::Migration
  def self.up
     remove_column :applicants, :admission_status_type_id
  end

  def self.down
     add_column :applicants, :admission_status_type_id, :integer
  end
end
