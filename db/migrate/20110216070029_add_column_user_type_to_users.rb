class AddColumnUserTypeToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :user_type, :string
  end

  def self.down
    remove_column :users, :user_type
  end
end
