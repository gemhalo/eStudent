class CreateEnrollmentModeTypes < ActiveRecord::Migration
  def self.up
    create_table :enrollment_mode_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :enrollment_mode_types
  end
end
