class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :type
      t.text :subjective
      t.text :objective
      t.text :assessment
      t.text :plan
      t.string :ordering_provider
      t.string :patient

      t.timestamps null: false
    end
    add_index :notes, :ordering_provider
    add_index :notes, :patient
  end
end
