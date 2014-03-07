class AddInterestedToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :interested, :boolean, :default => true
  end
end
