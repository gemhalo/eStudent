class ChangeAdmissionStatusType < ActiveRecord::Migration
  def self.up
    change_column :applicants, :admission_status, :boolean
  end

  def self.down
  end
end
