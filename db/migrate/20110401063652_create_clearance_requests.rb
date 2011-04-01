class CreateClearanceRequests < ActiveRecord::Migration
  def self.up
    create_table :clearance_requests do |t|
      t.integer :student_id
      t.string :reason_for
      t.string :reason_for_withdrawal
      t.date :clearance_date
      t.boolean :approval
      t.string :attachment
      t.string :attachment_file_name
      t.string :attachment_content_type             
      t.integer :attachment_file_size

      t.timestamps
    end
  end

  def self.down
    drop_table :clearance_requests
  end
end
