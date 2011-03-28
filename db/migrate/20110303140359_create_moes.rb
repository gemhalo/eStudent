class CreateMoes < ActiveRecord::Migration
  def self.up
    create_table :moes do |t|
      t.string :registration_no
      t.string :first_name
      t.string :father_name
      t.string :grand_father_name
      t.string :nationality
      t.string :sex
      t.string :sight
      t.integer :age
      t.string :school_code
      t.string :region
      t.string :stream
      t.integer :id_no
      t.string :placement
      t.float :result
      t.integer :result_out_of

      t.timestamps
    end
  end

  def self.down
    drop_table :moes
  end
end
