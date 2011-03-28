class DeletePhoto < ActiveRecord::Migration
  def self.up
    remove_column :people, :photo
  end

  def self.down
  end
end
