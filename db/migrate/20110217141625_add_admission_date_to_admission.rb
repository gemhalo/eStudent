class AddAdmissionDateToAdmission < ActiveRecord::Migration
  def self.up
    add_column :admissions, :admission_date, :datetime
  end

  def self.down
    remove_column :admissions, :admission_date
  end
end
