class CreateAcademicAndProfessionalQualifications < ActiveRecord::Migration
  def self.up
    create_table :academic_and_professional_qualifications do |t|
      t.date :date_issued
      t.string :attachment_file_name
      t.string :attachment_content_type
      t.integer :attachment_file_size
      t.integer :applicant_id

      t.timestamps
    end
  end

  def self.down
    drop_table :academic_and_professional_qualifications
  end
end
