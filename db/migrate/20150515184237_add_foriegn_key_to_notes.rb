class AddForiegnKeyToNotes < ActiveRecord::Migration
  def change
  	change_column :notes, :user_id, 'integer USING CAST(user_id AS integer)'
  end
end
