class RenameColumnNationalityPeopleTable < ActiveRecord::Migration
  def self.up
    rename_column :people, :nationality, :nationality_id
  end

  def self.down
    rename_column :people, :nationality_id, :nationality
  end
end
