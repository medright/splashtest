class RenameTypeColumn < ActiveRecord::Migration
  def change
  	rename_column :notes, :type, :service
  end
end
