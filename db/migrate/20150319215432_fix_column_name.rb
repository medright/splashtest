class FixColumnName < ActiveRecord::Migration
  def change
  	change_column :meds, :ordering_provider, :string
  end
end
