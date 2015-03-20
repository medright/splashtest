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
      t.text :cbcNa
      t.text :cbcCl
      t.text :cbcBUN
      t.text :cbcK
      t.text :cmpHco3
      t.text :cmpCr
      t.text :cbcWbc
      t.text :hbg
      t.text :htc
      t.text :plt
      t.text :glucose
      t.text :bpSys
      t.text :bpDia
      t.text :o2
      t.string :pulse
      t.string :resp
      t.string :temp
      t.string :provider_id
      t.string :consumer_id

      t.timestamps null: false
    end
  end
end
