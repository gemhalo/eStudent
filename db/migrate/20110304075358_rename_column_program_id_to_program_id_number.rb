class RenameColumnProgramIdToProgramIdNumber < ActiveRecord::Migration
  def self.up
    rename_column :programs, :program_id, :program_id_number
  end

  def self.down
     rename_column :programs, :program_id, :program_id_number
  end
end
