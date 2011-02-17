class CreateAdmissions < ActiveRecord::Migration
  def self.up
    create_table :admissions do |t|
      t.integer :applicant_id
      t.integer :enrollement_type_id
      t.integer :admission_type_id
      t.string :entry_level
      t.integer :admision_status
      t.integer :college
      t.integer :accadamic_calender_id
      t.string :major_feild_of_study
      t.string :minor_feild_of_study

      t.timestamps
    end
  end

  def self.down
    drop_table :admissions
  end
end
