class CreateCurriculums < ActiveRecord::Migration
  def self.up
    create_table :curriculums do |t|
      t.integer :program_id
      t.integer :class_year_id
      t.integer :semester_id

      t.timestamps
    end
  end

  def self.down
    drop_table :curriculums
  end
end
