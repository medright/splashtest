class CreateVitalSigns < ActiveRecord::Migration
  def change
    create_table :vital_signs do |t|
      t.string :bpsys
      t.string :bpdia
      t.string :o2
      t.string :pulse
      t.string :resp
      t.string :temp

      t.timestamps null: false
    end
  end
end
