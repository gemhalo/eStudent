class CreateAgreements < ActiveRecord::Migration
  def self.up
    create_table :agreements do |t|
      t.boolean :agreement
      t.integer :applicant_id

      t.timestamps
    end
  end

  def self.down
    drop_table :agreements
  end
end
