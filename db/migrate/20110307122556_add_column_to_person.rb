class AddColumnToPerson < ActiveRecord::Migration
  def self.up
    add_column :people, :disability, :boolean
    add_column :people, :type_of_disability, :string
    add_column :people, :region_code, :integer
  end

  def self.down
    remove_column :people, :region_code
    remove_column :people, :type_of_disability
    remove_column :people, :disability
  end
end
