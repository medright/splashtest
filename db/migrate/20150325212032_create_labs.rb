class CreateLabs < ActiveRecord::Migration
  def change
    create_table :labs do |t|
      t.string :na
      t.string :cl
      t.string :bun
      t.string :k
      t.string :hco3
      t.string :cr
      t.string :wbc
      t.string :hgb
      t.string :htc
      t.string :plt
      t.string :glucose

      t.timestamps null: false
    end
  end
end
