class RenameColumnInstructorTableFromIdNumberToEmployeeId < ActiveRecord::Migration
  def self.up
  	rename_column :instructors, :id_number, :employee_id
  end

  def self.down
 	rename_column :instructors,  :employee_id, :id_number
  end
end
