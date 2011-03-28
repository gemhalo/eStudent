class CreateEnrollmentTypes < ActiveRecord::Migration
  def self.up
    create_table :enrollment_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :enrollment_types
  end
end
