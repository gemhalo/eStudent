class AddApplicantIdToFamilyBackgrounds < ActiveRecord::Migration
  def self.up
    add_column :Family_Backgrounds, :applicant_id, :integer
  end

  def self.down
    remove_column :Family_Backgrounds, :applicant_id
  end
end
