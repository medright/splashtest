class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :password_conf
      t.integer :pin
      t.string :role

      t.timestamps null: false
    end
  end
end
