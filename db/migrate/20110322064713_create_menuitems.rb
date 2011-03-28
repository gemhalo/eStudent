class CreateMenuitems < ActiveRecord::Migration
  def self.up
    create_table :menuitems do |t|
      t.string :linktitle
      t.string :linkcontroller
      t.string :linkaction
      t.string :linkicon
      t.string :role_id
      t.string :catagory

      t.timestamps
    end
  end

  def self.down
    drop_table :menuitems
  end
end
