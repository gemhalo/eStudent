class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :user_name
      t.string :hashed_password
      t.string :salt
      t.string :email
      t.date :last_login

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
