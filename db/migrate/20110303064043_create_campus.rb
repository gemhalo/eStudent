class CreateCampus < ActiveRecord::Migration
  def self.up
    create_table :campus do |t|
      t.string :name
      t.integer :campus_telephone
      t.string :campus_pobox
      t.string :campus_email

      t.timestamps
    end
  end

  def self.down
    drop_table :campus
  end
end
