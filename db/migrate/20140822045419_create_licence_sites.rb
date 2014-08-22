class CreateLicenceSites < ActiveRecord::Migration
  def change
    create_table :licence_sites do |t|
      t.integer :site_id
      t.integer :licence_id

      t.timestamps
    end
    add_index :licence_sites, :site_id
    add_index :licence_sites, :licence_id
  end
end
