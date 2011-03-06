class AddVerifiedToApplicant < ActiveRecord::Migration
  def self.up
    add_column :applicants, :verified, :boolean, :default => false
  end

  def self.down
    remove_column :applicants, :verified
  end
end
