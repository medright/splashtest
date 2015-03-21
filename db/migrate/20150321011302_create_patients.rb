class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.text :allergies
      t.string :code
      t.text :notes
      t.text :orders
      t.string :cbcNa
      t.string :cbcCl
      t.string :cbcBUN
      t.string :cbcK
      t.string :cmpHco3
      t.string :cmpCr
      t.string :cbcWbc
      t.string :hbg
      t.string :htc
      t.string :plt
      t.string :glucose
      t.string :bpSys
      t.string :bpDia
      t.string :o2
      t.string :resp
      t.string :temp
      t.string :provider_id
      t.string :consumer_id

      t.timestamps null: false
    end
  end
end
