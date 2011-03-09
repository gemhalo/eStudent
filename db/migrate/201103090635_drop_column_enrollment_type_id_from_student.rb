class DropColumnEnrollmentTypeIdFromStudent < ActiveRecord::Migration
  def self.up
    remove_column :students ,:enrollment_type_id
    remove_column :students ,:enrollment_mode_id 
    remove_column :students ,:admission_type_id  
  end

  def self.down
     add_column :students ,:enrollment_type_id , :integer
     add_column :students ,:enrollment_mode_id , :integer
     add_column :students ,:admission_type_id  , :integer

  end
end
