# Create table users
class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :first_name
      t.string :last_name
      t.integer :gender, :limit => 1, :default => 2
      t.datetime :last_login

      t.timestamps
    end
    add_index :users, :username, :unique => true
    add_index :users, :email, :unique => true
  end
end
