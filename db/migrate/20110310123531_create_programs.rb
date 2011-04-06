class CreatePrograms < ActiveRecord::Migration
  def self.up
    create_table :programs do |t|
      t.string :name
      t.integer :department_id
      t.integer :admission_id
      t.integer :duration
      t.integer :total_credit_hour
      t.integer :award_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :programs
  end
end
