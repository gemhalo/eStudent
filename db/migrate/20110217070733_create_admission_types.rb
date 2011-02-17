class CreateAdmissionTypes < ActiveRecord::Migration
  def self.up
    create_table :admission_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :admission_types
  end
end
