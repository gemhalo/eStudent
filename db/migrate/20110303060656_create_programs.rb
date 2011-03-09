class CreatePrograms < ActiveRecord::Migration
  def self.up
    create_table :programs do |t|
      t.string :program_id
      t.string :program_name
      t.string :level
      t.integer :enrollment_type
      t.string :mode
      t.string :award_type
      t.string :duration
      t.integer :total_credit_hour
      t.integer :department_id

      t.timestamps
    end
  end

  def self.down
    drop_table :programs
  end
end
