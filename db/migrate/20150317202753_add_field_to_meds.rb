class AddFieldToMeds < ActiveRecord::Migration
  def change
    add_column :meds, :ordering_provider, :number
  end
end
