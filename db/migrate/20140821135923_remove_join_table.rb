class RemoveJoinTable < ActiveRecord::Migration
  def change
    drop_table :licences_sites

  end
    remove_index :licences_sites, :licence_id
    remove_index :licences_sites, :site_id
end
