class CreateConsumers < ActiveRecord::Migration
  def change
    create_table :consumers do |t|
      t.string :user_id

      t.timestamps null: false
    end
  end
end
