class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.integer :academic_calander_id
      t.date :start_date
      t.date :end_date
      t.string :title
      t.string :detail

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
