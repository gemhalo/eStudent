class ChangeColumnEnrollmentId < ActiveRecord::Migration
  def self.up
  rename_column :admissions,:enrollment_type_id, :enrollement_type_id
  end

  def self.down
  
  end
end
