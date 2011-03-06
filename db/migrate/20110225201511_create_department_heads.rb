class CreateDepartmentHeads < ActiveRecord::Migration
  def self.up
    create_table :department_heads do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :department_heads
  end
end
