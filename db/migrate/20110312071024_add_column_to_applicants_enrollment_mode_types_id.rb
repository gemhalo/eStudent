class AddColumnToApplicantsEnrollmentModeTypesId < ActiveRecord::Migration
  def self.up
  	add_column :applicants, :enrollment_mode_type_id, :integer
  end

  def self.down
	remove_column :applicants, :enrollment_mode_type_id
  end
end
