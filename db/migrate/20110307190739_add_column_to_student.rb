class AddColumnToStudent < ActiveRecord::Migration
  def self.up
    add_column :students, :college_name, :string
  end

  def self.down
    remove_column :students, :college_name
  end
end
