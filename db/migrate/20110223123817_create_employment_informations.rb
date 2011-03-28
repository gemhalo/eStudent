class CreateEmploymentInformations < ActiveRecord::Migration
  def self.up
    create_table :employment_informations do |t|
      t.string :job_type
      t.string :employer_name
      t.string :employer_telephone
      t.string :employer_pobox
      t.string :employer_email
      t.integer :applicant_id

      t.timestamps
    end
  end

  def self.down
    drop_table :employment_informations
  end
end
