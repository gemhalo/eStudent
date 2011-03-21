class AddColumnForceChange < ActiveRecord::Migration
  def self.up
    add_column :users, :force_change, :boolean, :default => false
  end

  def self.down
    drop_column :users, :force_change
  end
end
