class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :kind
      t.string :email
      t.string :pin
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
