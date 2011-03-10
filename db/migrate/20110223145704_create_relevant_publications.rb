class CreateRelevantPublications < ActiveRecord::Migration
  def self.up
    create_table :relevant_publications do |t|
      t.string :description
      t.date :published_date
      t.string :publication_title
      t.string :attachment_file_name
      t.string :attachment_content_type
      t.integer :attachment_file_size
      t.integer :applicant_id

      t.timestamps
    end
  end

  def self.down
    drop_table :relevant_publications
  end
end
