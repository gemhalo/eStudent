class AddColumnEnrollmentModeIdToStudent < ActiveRecord::Migration
  def self.up
    add_column :students, :enrollment_mode_id, :integer
  end

  def self.down
    remove_column :students, :enrollment_mode_id
  end
end
