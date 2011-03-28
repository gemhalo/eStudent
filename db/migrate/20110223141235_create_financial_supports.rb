class CreateFinancialSupports < ActiveRecord::Migration
  def self.up
    create_table :financial_supports do |t|
      t.string :supporter_type
      t.string :supporter_name
      t.string :supporter_telephone
      t.string :supporter_pobox
      t.string :email
      t.string :attachment_file_name
      t.string :attachment_content_type
      t.integer :attachment_file_size
      t.integer :applicant_id

      t.timestamps
    end
  end

  def self.down
    drop_table :financial_supports
  end
end
