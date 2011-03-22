class CreateMenuitems < ActiveRecord::Migration
  def self.up
    create_table :menuitems do |t|
      t.string :title
      t.string :linkpath
      t.string :linkicon
      t.integer :role_id
      t.string :catagory

      t.timestamps
    end
  end

  def self.down
    drop_table :menuitems
  end
end
