class RenameColumn < ActiveRecord::Migration
  def self.up
    rename_column :events, :academic_calander_id, :academic_calendar_id
  end

  def self.down
  end
end
