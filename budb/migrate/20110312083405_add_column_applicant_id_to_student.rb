class AddColumnApplicantIdToStudent < ActiveRecord::Migration
  def self.up
  	add_column :students, :applicant_id, :integer
  end

  def self.down
  	remove_column :students, :applicant_id, :integer
  end
end
