class CreateEducationalBackgrounds < ActiveRecord::Migration
  def self.up
    create_table :educational_backgrounds do |t|
      t.string :institution_type
      t.string :institution_name
      t.string :region
      t.string :zone
      t.string :town
      t.integer :result
      t.integer :out_of
      t.string :department
      t.string :college_leave_reason
      t.integer :applicant_id

      t.timestamps
    end
  end

  def self.down
    drop_table :educational_backgrounds
  end
end
