class RenameColumnApplicantsAdmissionStatusToAdmissionStatusTypeId < ActiveRecord::Migration
  def self.up
  	rename_column :applicants, :admission_status, :admission_status_type_id
  end

  def self.down
  	  	rename_column :applicants, :admission_status_type_id, :admission_status
  end
end
