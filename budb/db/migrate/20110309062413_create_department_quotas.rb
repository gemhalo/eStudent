class CreateDepartmentQuotas < ActiveRecord::Migration
  def self.up
    create_table :department_quotas do |t|
      t.integer :department_id
      t.integer :total_quota
      t.integer :female_percentage

      t.timestamps
    end
  end

  def self.down
    drop_table :department_quotas
  end
end
