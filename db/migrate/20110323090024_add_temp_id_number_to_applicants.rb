class AddTempIdNumberToApplicants < ActiveRecord::Migration
  def self.up
    add_column :applicants, :temp_id_number, :string
  end

  def self.down
    remove_column :applicants, :temp_id_number
  end
end
