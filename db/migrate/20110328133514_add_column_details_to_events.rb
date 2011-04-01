class AddColumnDetailsToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :details, :string
  end

  def self.down
    remove_column :events, :details
  end
end
