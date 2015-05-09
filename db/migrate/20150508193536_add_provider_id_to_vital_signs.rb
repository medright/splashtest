class AddProviderIdToVitalSigns < ActiveRecord::Migration
  def change
  	add_column :vital_signs, :provider_id, :integer
  	add_column :vital_signs, :consumer_id, :integer
  end
end
