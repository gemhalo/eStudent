class AddColumnInstructorIdToCollege < ActiveRecord::Migration
  def self.up
    add_column :colleges, :instructor_id, :integer
  end

  def self.down
    remove_column :colleges, :instructor_id
  end
end
