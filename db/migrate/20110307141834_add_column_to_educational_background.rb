class AddColumnToEducationalBackground < ActiveRecord::Migration
  def self.up
    add_column :educational_backgrounds, :student_id, :integer
  end

  def self.down
    remove_column :educational_backgrounds, :student_id
  end
end
