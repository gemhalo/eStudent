class CreateReferences < ActiveRecord::Migration
  def self.up
    create_table :references do |t|
      t.string :full_name
      t.string :office_telephone
      t.string :mobile_telephone
      t.string :email
      t.string :profession
      t.integer :applicant_id

      t.timestamps
    end
  end

  def self.down
    drop_table :references
  end
end
