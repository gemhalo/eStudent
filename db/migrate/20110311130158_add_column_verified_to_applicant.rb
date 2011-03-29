class AddColumnVerifiedToApplicant < ActiveRecord::Migration
  def self.up
    add_column :applicants, :verified, :boolean
  end

  def self.down
    remove_column :applicants, :verified
  end
end
