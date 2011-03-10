class CreateDepartments < ActiveRecord::Migration
  def self.up
    create_table :departments do |t|
      t.string :name
      t.integer :college_id
      t.string :dept_head

      t.timestamps
    end
  end

  def self.down
    drop_table :departments
  end
end
