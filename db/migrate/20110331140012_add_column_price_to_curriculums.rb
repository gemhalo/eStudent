class AddColumnPriceToCurriculums < ActiveRecord::Migration
  def self.up
    add_column :curriculums, :price, :float
  end

  def self.down
    remove_column :curriculums, :price
  end
end
