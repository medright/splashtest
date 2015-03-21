class AddPulseToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :pulse, :string
  end
end
