class RenameColumnEnrollementTypeIdToEnrollmentTypeIdInAddmissions < ActiveRecord::Migration
  def self.up
    rename_column :admissions, :enrollement_type_id, :enrollment_type_id
  end

  def self.down
      rename_column :admissions, :enrollment_type_id, :enrollement_type_id

  end
end
