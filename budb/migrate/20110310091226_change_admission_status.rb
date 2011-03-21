class ChangeAdmissionStatus < ActiveRecord::Migration
  def self.up
    change_column :applicants, :admission_status, :integer

  end

  def self.down
  end
end
