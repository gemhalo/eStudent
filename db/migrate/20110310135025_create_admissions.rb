class CreateAdmissions < ActiveRecord::Migration
  def self.up
    create_table :admissions do |t|
      t.integer :admission_type_id
      t.integer :enrollment_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :admissions
  end
end
