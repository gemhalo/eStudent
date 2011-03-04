class CreateEmergencyContacts < ActiveRecord::Migration
  def self.up
    create_table :emergency_contacts do |t|
      t.string :full_name
      t.string :relationship
      t.string :residence_telephone
      t.string :office_telephone
      t.string :mobile_telephone
      t.integer :applicant_id

      t.timestamps
    end
  end

  def self.down
    drop_table :emergency_contacts
  end
end
