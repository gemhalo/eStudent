class CreateServiceTypes < ActiveRecord::Migration
  def self.up
    create_table :service_types do |t|
      t.string :service_name
      t.string :type
      t.float :price

      t.timestamps
    end
  end

  def self.down
    drop_table :service_types
  end
end
