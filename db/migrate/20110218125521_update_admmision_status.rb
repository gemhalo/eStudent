class UpdateAdmmisionStatus < ActiveRecord::Migration
  def self.up
    change_table :admissions do |t|
      t.change :admision_status, :boolean
    end
  end

  def self.down
  end
end
