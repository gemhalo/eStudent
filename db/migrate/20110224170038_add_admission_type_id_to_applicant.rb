class AddAdmissionTypeIdToApplicant < ActiveRecord::Migration
  def self.up
    add_column :applicants, :admission_type_id, :integer
  end

  def self.down
    remove_column :applicants, :admission_type_id
  end
end
