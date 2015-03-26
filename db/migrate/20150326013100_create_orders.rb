class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :problem
      t.text :details
      t.string :ordering_provider
      t.string :patient

      t.timestamps null: false
    end
    add_index :orders, :ordering_provider
    add_index :orders, :patient
  end
end
