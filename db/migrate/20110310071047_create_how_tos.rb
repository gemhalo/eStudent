class CreateHowTos < ActiveRecord::Migration
  def self.up
    create_table :how_tos do |t|
      t.string :title
      t.text :detail

      t.timestamps
    end
  end

  def self.down
    drop_table :how_tos
  end
end
