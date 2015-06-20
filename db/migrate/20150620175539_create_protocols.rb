class CreateProtocols < ActiveRecord::Migration
  def change
    create_table :protocols do |t|
      t.string :amc

      t.timestamps null: false
    end
    add_index :protocols, :amc
  end
end
