class RenameColumn < ActiveRecord::Migration
  def change
  	rename_column :patients, :cbc, :cbcK
  end
end
