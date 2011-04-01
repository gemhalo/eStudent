class CreateServiceAgreements < ActiveRecord::Migration
  def self.up
    create_table :service_agreements do |t|
      t.integer :student_id
      t.integer :service_type_id
      t.integer :class_year_id
      t.integer :academic_year_semester_id

      t.timestamps
    end
  end

  def self.down
    drop_table :service_agreements
  end
end
