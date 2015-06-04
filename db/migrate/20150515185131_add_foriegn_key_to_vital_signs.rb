class AddForiegnKeyToVitalSigns < ActiveRecord::Migration
  def change
  	add_column :vital_signs, :user_id, :integer
  end
end
