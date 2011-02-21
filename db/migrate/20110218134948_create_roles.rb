class CreateRoles < ActiveRecord::Migration
  def self.up
    add_column :users, :role_id, :integer
    create_table :roles do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    remove_column :users, :role_id
    drop_table :roles
  end
end
