class CreateAwardTypes < ActiveRecord::Migration
  def self.up
    create_table :award_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :award_types
  end
end
