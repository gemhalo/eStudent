class CreateBorrowedItems < ActiveRecord::Migration
  def self.up
    create_table :borrowed_items do |t|
      t.string :id_number
      t.string :employee_id_number
      t.string :item_name
      t.string :item_type
      t.string :borrowed_from
      t.boolean :cleared
      t.date :borrowed_date
      t.date :return_date

      t.timestamps
    end
  end

  def self.down
    drop_table :borrowed_items
  end
end
