class CreateApplicants < ActiveRecord::Migration
  def self.up
    create_table :applicants do |t|
      t.integer :person_id
      t.integer :admission_status_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :applicants
  end
end
