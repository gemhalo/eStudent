class CreateDepartmentChoices < ActiveRecord::Migration
  def self.up
    create_table :department_choices do |t|
      t.integer :department_id
      t.integer :applicant_id
      t.integer :preference

      t.timestamps
    end
  end

  def self.down
    drop_table :department_choices
  end
end
