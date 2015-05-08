class AddUserIdToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :user_id, :string
    add_index :notes, :user_id
  end
end
