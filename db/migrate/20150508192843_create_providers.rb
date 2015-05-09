class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :user_id

      t.timestamps null: false
    end
  end
end
