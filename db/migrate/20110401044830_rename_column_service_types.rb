class RenameColumnServiceTypes < ActiveRecord::Migration
  def self.up
   rename_column :service_types, :type , :service_type
  end

  def self.down
   rename_column :service_types, :service_type, :type 
  end
end
