class AddColumnAdmissionIdToStudent < ActiveRecord::Migration
  def self.up
    add_column :students, :admission_id, :integer
  end

  def self.down
    remove_column :students, :admission_id
  end
end
