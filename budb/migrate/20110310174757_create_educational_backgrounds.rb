class CreateEducationalBackgrounds < ActiveRecord::Migration
  def self.up
    create_table :educational_backgrounds do |t|
      t.string :institution_type
      t.string :institution_name
      t.string :result_type
      t.string :eheece_code
      t.string :school_code
      t.string :institution_region
      t.string :institution_zone
      t.string :institution_town
      t.integer :result
      t.integer :out_of
      t.string :department
      t.string :college_leave_reason
      t.integer :applicant_id
      t.string :attachment_file_name
      t.string :attachment_content_type
      t.integer :attachment_file_size

      t.timestamps
    end
  end

  def self.down
    drop_table :educational_backgrounds
  end
end
