class CreateMeds < ActiveRecord::Migration
  def change
    create_table :meds do |t|
      t.string :name
      t.string :dose
      t.datetime :start_date
      t.datetime :end_date
      t.string :route
      t.string :consumer_id
      t.string :dose_timing

      t.timestamps null: false
    end
    add_index :meds, :consumer_id
  end
end
